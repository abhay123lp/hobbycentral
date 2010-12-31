<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://www.google.com/jsapi?key=ABQIAAAA-ew1kHXLNLboFYk-H3dUIBRk6_mJcNSy7YbnPwCGkmopiuEwnxQGQ8RuewpdGpiJ52gWml_EtjhP-A"></script>
<script type="text/javascript">

    // Add pagination links
    
    // This code generates a "Raw Searcher" to handle search queries. The Raw Searcher requires
    // you to handle and draw the search results manually.
    
    google.load('search', '1');
    
    var blogSearch;
    
    function addPaginationLinks() {
      // Add pagination
      var cursor = blogSearch.cursor;
      var curPage = cursor.currentPageIndex; // check what page the app is on
      var pagesDiv = document.createElement('div');
      for (var i = 0; i < cursor.pages.length; i++) {
        var page = cursor.pages[i];
          if (curPage == i) { // if we are on the curPage, then don't make a link
            var label = document.createTextNode(' ' + page.label + ' ');
            pagesDiv.appendChild(label);
          } else {
    
            // If we aren't on the current page, then we want a link to this page.
            // So we create a link that calls the gotoPage() method on the searcher.
            var link = document.createElement('a');
            link.href = 'javascript:blogSearch.gotoPage('+i+');';
            link.innerHTML = page.label;
            link.style.marginRight = '2px';
            pagesDiv.appendChild(link);
          }
        }
      var contentDiv = document.getElementById('blogdiv');
      contentDiv.appendChild(pagesDiv);
    }
        
    function searchComplete() {
      // Check that we got results
      document.getElementById('blogdiv').innerHTML = '';
      if (blogSearch.results && blogSearch.results.length > 0) {
        for (var i = 0; i < blogSearch.results.length; i++) {
    
          // Create HTML elements for search results
          var p = document.createElement('p');
          var a = document.createElement('a');
          a.href = blogSearch.results[i].postUrl;
          a.innerHTML = blogSearch.results[i].title;
    
          // Append search results to the HTML nodes
          p.appendChild(a);
          document.getElementById('blogdiv').appendChild(p);
        }
      }
      addPaginationLinks(blogSearch);
    }
    
    function onLoad() {
      // Create a BlogSearch instance.
      blogSearch = new google.search.BlogSearch();
    
      // Set searchComplete as the callback function when a search is complete.  The
      // blogSearch object will have results in it.
      blogSearch.setSearchCompleteCallback(this, searchComplete, null);
    
      // Execute search query
      
      blogSearch.execute(document.getElementById("blogQuery").value);
    
      // Include the required Google branding
      google.search.Search.getBranding('branding');
    }
    
    // Set a callback to call your code when the page loads
    google.setOnLoadCallback(onLoad);
    
    
    </script>
</head>
<body>
<div id="branding"  style="float: left;"></div><br />
<div id="blogdiv">Loading Blogs...</div>
</body>
</html>