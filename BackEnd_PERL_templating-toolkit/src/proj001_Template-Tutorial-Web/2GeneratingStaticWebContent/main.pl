[%  INCLUDE tt/include/header.tt
      title = 'This is an HTML example';

    pages = [
      { url   = 'http://foo.org'
        title = 'The Foo Organisation'
      }
      { url   = 'http://bar.org'
        title = 'The Bar Organisation'
      }
    ]
%]
   <h1>Understanding Templating Toolkit written in PERL</h1>
   <ul>
[%  FOREACH page IN pages %]
     <li><a href="[% page.url %]">[% page.title %]</a>
[%  END %]
   </ul>

[% INCLUDE tt/include/footer.tt %]
