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

function createList(list, fadeIn) {
    $("#newList").addClass("adding");
    listsService.CreateList(list, function(createdList) {
        if (createdList == null) return;
        addList(createdList, true);
        $("#newList").removeClass("adding");
        refreshStripes();
    });
}

function addList(list, fadeIn) {
    $("#lists li.empty").slideUp();
    var t = $("<li></li>").listItem({ list: list, enableEdit: authenticatedUser })
                          .bind("delete", function(e) { deleteList(e.list, e.control); })
                          .bind("update", function(e) { updateList(e.list, e.control); });
    t.appendTo($("#lists"));
    if (fadeIn && (!$.browser.msie || ($.browser.version > 7 || navigator.userAgent.indexOf("Trident/4.0") > -1))) t.hide().slideDown(200);
}

function deleteList(list, listControl) {
    listControl.addClass("deleting");
    listsService.DeleteList(list, function(status) {
        listControl.removeClass("deleting");
        listControl.slideUp(200, function() {
            $(this).remove();
            refreshStripes();
        });
    });
}

function updateList(list, listControl) {
    listControl.addClass("updating");
    listsService.UpdateList(list, function(status) {
        listControl.removeClass("updating");
    });
}

function refreshStripes() {
    $("#lists li").each(function(ix, el) {
        if (ix % 2 == 0) {
            $(this).removeClass("alter")
        } else {
            $(this).addClass("alter");
        }
    });

    if ($("#lists li").length == 1) $("#lists li.empty").slideDown();
}