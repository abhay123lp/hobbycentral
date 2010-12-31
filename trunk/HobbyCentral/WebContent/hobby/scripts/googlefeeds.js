/*
*  How to use the Dynamic Feed Control, which has pretty UI already made for you!
*  Don't forget to check out the options:
*  http://www.google.com/uds/solutions/dynamicfeed/reference.html
*/

google.load('feeds', '1');

function OnLoad() {
  var feeds = [
    {
      title: 'Not So Boring Life',
      url: 'http://feeds.feedburner.com/Notsoboringlife?format=xml'
    },
    {
      title: 'Hobby Thing',
      url: 'http://feeds.feedburner.com/HobbyThing?format=xml'
    },
  ];

  var options = {
    stacked : true,
    horizontal : false,
    title : "Latest Feeds"
  };

  new GFdynamicFeedControl(feeds, 'content', options);
  document.getElementById('content').style.width = "200px";
}

google.setOnLoadCallback(OnLoad);