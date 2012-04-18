{% for a in site.latest_1_articles %}
<div id="latest-news">
    <h3>{{"latest_news"|lc}}</h3>
		<ul>
        {% for article in site.latest_2_articles %}
		    <li><span class="latest-date">{{article.created_at | format_date:"short"}}</span> <a href="{{article.url}}">{{article.title}}</a></li>
	    {% endfor %}
        </ul>
</div>
{% endfor %}