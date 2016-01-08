// ---------------------------------------------------------------------------------- 
// Microsoft Developer & Platform Evangelism 
//  
// Copyright (c) Microsoft Corporation. All rights reserved. 
//  
// THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,  
// EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES  
// OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE. 
// ---------------------------------------------------------------------------------- 
// The example companies, organizations, products, domain names, 
// e-mail addresses, logos, people, places, and events depicted 
// herein are fictitious.  No association with any real company, 
// organization, product, domain name, email address, logo, person, 
// places, or events is intended or should be inferred. 
// ---------------------------------------------------------------------------------- 

namespace Microsoft.Samples.MyTodo.Web.Controllers
{
    using System.Linq;
    using System.Web.Mvc;
    using System.Web.WebPages;

    using Microsoft.Samples.MyTodo.Model;
    using Microsoft.Samples.MyTodo.Web.ViewModels;

    public class HomeController : Controller
    {
        private readonly MyTodoContext model;

        public HomeController()
            : this(new MyTodoContext())
        {
        }

        public HomeController(MyTodoContext model)
        {
            this.model = model;
        }

        public ActionResult Index()
        {
            var lists = this.model.TaskLists.Where(o => o.IsPublic == 1).OrderBy(o => o.Name).ToArray();
            var viewModel = new TaskListsViewModel { Lists = lists };
            return View(viewModel);
        }

        public ActionResult About()
        {
            return View();
        }
    }
}