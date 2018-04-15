$(document).ready(function() {
    getArticles();
    $("#new-article").off("click").on("click", function() {
        newArticle("xxxxx", "cccccc");
    })
});

const endpoint = "https://safe-coast-54130.herokuapp.com/api/v1/articles";

function getArticles() {
    $.ajax({
      url: endpoint,
      success: function(result) {
          displayArticle(result.data);
          attachArticleEvents();
      }
    });
}

function newArticle(title, content) {
    $.ajax({
        url: endpoint,
        type: "post",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify({ title: title, body: content }),
        success: function(result) {
            location.reload(true);
        }
    });
}

function editArticle(id, title, content) {
    $.ajax({
        url: endpoint +'/'+id,
        type: "put",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify({ title: title, body: content }),
        success: function(result) {
            location.reload(true);
        }
    });
}

function deleteArticle(id) {
    $.ajax({
        url: endpoint +'/'+id,
        type: "delete",
        success: function(result) {
            location.reload(true);
        }
    });
}

function displayArticle(data) {
    for (var key in data) {
        if (data.hasOwnProperty(key)) {
            var article = '<div><h3 id="title'+data[key].id+'">' + data[key].id + '-' + data[key].title + '</h3> \
            <p>'+data[key].body+'</p> \
            &nbsp;&nbsp;<button data-edit-aid="'+data[key].id+'" type="button" class="btn btn-primary btn-sm">Edit</button> \
            &nbsp;&nbsp;<button data-delete-aid="'+data[key].id+'" type="button" class="btn btn-danger btn-sm">Delete</button> \
            </div><hr/>';
            $("#articles").append(article);
        }
    }
}

function attachArticleEvents() {
    $("#articles").off("click")
    .on("click", "button[data-edit-aid]", function() {
        editArticle($(this).attr("data-edit-aid"), "GGGG", "HHHHH");
    })
    .on("click", "button[data-delete-aid]", function() {
        deleteArticle($(this).attr("data-delete-aid"));
    });
}
