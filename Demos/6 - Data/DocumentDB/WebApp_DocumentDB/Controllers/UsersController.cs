using System;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;
using Microsoft.Azure.Documents;
using Microsoft.Azure.Documents.Client;
using Microsoft.Azure.Documents.Linq;
using Microsoft.WindowsAzure;
using Newtonsoft.Json;

namespace WebApp_DocumentDB.Controllers
{

    public class UsersController : ApiController
    {
        private static readonly DocumentClient Client;
        private static readonly DocumentCollection DocumentCollection;

        static UsersController()
        {
            var address = CloudConfigurationManager.GetSetting("DocumentDbEndpointAddress");
            var authorizationKey = CloudConfigurationManager.GetSetting("DocumentDbAuthorizationKey");
            
            Client = new DocumentClient(new Uri(address), authorizationKey);

            var database = GetOrCreateDatabase(Client, "CloudCampDb");
            DocumentCollection = GetOrCreateCollection(Client, database.SelfLink, "Users");
        }

        private static Database GetOrCreateDatabase(DocumentClient client, string databaseName)
        {
            // Try to retrieve the database (Microsoft.Azure.Documents.Database) whose Id is equal to databaseName            
            var database = client.CreateDatabaseQuery().Where(db => db.Id == databaseName).ToArray().FirstOrDefault()
                           ?? client.CreateDatabaseAsync(new Database { Id = databaseName }).Result;

            return database;
        }

        private static DocumentCollection GetOrCreateCollection(DocumentClient client, string databaseSelfLink, string collectionName)
        {
            // Try to retrieve the collection (Microsoft.Azure.Documents.DocumentCollection) whose Id is equal to collectionName
            var collection = client.CreateDocumentCollectionQuery(databaseSelfLink)
                .Where(c => c.Id == collectionName)
                .ToArray()
                .FirstOrDefault()
                             ??
                             client.CreateDocumentCollectionAsync(databaseSelfLink,
                                 new DocumentCollection { Id = collectionName }).Result;

            if (collection == null)
            {
                collection = new DocumentCollection { Id = collectionName };
                collection.IndexingPolicy.IncludedPaths.Add(new IndexingPath { IndexType = IndexType.Range, NumericPrecision = 5, Path = "/" });

                collection = client.CreateDocumentCollectionAsync(databaseSelfLink, collection).Result;
            }
            return collection;
        }

        [HttpGet]
        [Route("Users/Fill")]
        public async Task<IHttpActionResult> Fill()
        {
            await Client.CreateDocumentAsync(DocumentCollection.DocumentsLink, new {FirstName = "Israel", LastName = "Olcha", SpeaksHebrew = true});
            await Client.CreateDocumentAsync(DocumentCollection.DocumentsLink, new { FirstName = "Yuval", LastName = "Mazor", SpeaksPortuguese = true });
            await Client.CreateDocumentAsync(DocumentCollection.DocumentsLink, new {FirstName = "Rotem", LastName = "Or"});
            await Client.CreateDocumentAsync(DocumentCollection.DocumentsLink, new {FirstName = "Israel", LastName = "Tabadi", WorksAtSela = false});
            await Client.CreateDocumentAsync(DocumentCollection.DocumentsLink, new {FirstName = "Ido", LastName = "Flatow", MVP = true});
            return Ok("Documents added");
        }

        [HttpGet]
        [Route("Users/DeleteAll")]
        public async Task<IHttpActionResult> DeleteAll()
        {
            var selfLinks = Client
                .CreateDocumentQuery<Document>(DocumentCollection.DocumentsLink)
                .Select(doc => doc.SelfLink)
                .AsEnumerable();

            await Task.Run(() =>
            {
                Parallel.ForEach(selfLinks,
                    async selfLink =>
                    {
                        await Client.DeleteDocumentAsync(selfLink);
                    });
            });
            return Ok("Documents deleted");
        }


        [HttpPost]
        [Route("Users/Add")]
        public async Task<IHttpActionResult> AddUserAsync([FromBody]User user)
        {
            await Client.CreateDocumentAsync(DocumentCollection.DocumentsLink, user);
            return Ok();
        }

        [HttpGet]
        [Route("Users/FindByName/{firstName}")]
        public async Task<IHttpActionResult> FindUsersByName(string firstName)
        {
            var users = Client
                .CreateDocumentQuery<User>(DocumentCollection.DocumentsLink)
                .Where(r => r.FirstName == firstName)
                .ToList();

            return await Task.FromResult(Json(users));
        }

        [HttpGet]
        [Route("Users/GetAll")]
        public async Task<IHttpActionResult> GetAllUsers()
        {
            var users = Client
               .CreateDocumentQuery<dynamic>(DocumentCollection.DocumentsLink)
               .ToList();

            return await Task.FromResult(Json(users));
        }
    }

    public class User
    {
        [JsonProperty(PropertyName = "id")]
        public string Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
