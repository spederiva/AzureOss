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

namespace Microsoft.Samples.MyTodo.Model
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.Runtime.Serialization;

    public class Task
    {
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Description { get; set; }

        public Guid Id { get; set; }

        public Guid TaskListId { get; set; }

        public TaskList TaskList { get; set; }

        public string UserName { get; set; }

        public string Name { get; set; }

        public byte Status { get; set; }

        public DateTime StartDate { get; set; }

        public DateTime? DueDate { get; set; }

        public DateTime TimestampUpdate { get; set; }
    }
}
