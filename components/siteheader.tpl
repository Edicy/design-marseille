    <meta charset="UTF-8">
    <meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
    <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
    {% if site.search.enabled %}{% stylesheet_link "assets/site_search/3.0/style.css?1" static_host="true" %}{% endif %}
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700,400&subset=cyrillic-ext,greek,vietnamese,latin-ext,cyrillic,greek-ext,latin' rel='stylesheet' type='text/css'>    
    {% stylesheet_link "fonts.css?1" %}    
    {% stylesheet_link "reset.css?1" %}
	{% stylesheet_link "style.css?1" %}
    <!--[if lt IE 8]>{% stylesheet_link "style_ie.css?1" %}<![endif]-->
	{% if editmode %}<style>.untranslated{opacity:.5;filter:alpha(Opacity=50);zoom:1}</style>{% endif %}
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <meta name="viewport" content="initial-scale=1" />
	<!--[if IE]><style>.clearfix { zoom:1; }</style><![endif]-->
	<title>{% if article %}{{ article.title }} — {{page.site_title}}{% else %}{{page.site_title}} — {{ page.title }}{% endif %}</title>
    <script src="{{ javascripts_path }}/modernizr.js"></script>