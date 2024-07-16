@php
    echo '<?xml version="1.0" encoding="UTF-8"?>'
@endphp
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

    <url>
        <loc>https://codepin.org/</loc>
        <lastmod>2024-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>


    <url>
        <loc>https://codepin.org/about</loc>
        <lastmod>2024-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>


    @foreach ($blogs as $blogs)
        
    <url>
        <loc>{{url('/')}}/blogs/{{$blogs->slug}}</loc>
        <lastmod>{{$blogs->created_at->tz('UTC')->toAtomString()}}</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>
    @endforeach
    @foreach ($services as $services)
        
    <url>
        <loc>{{url('/')}}/services/{{$services->slug}}</loc>
        <lastmod>{{$services->created_at->tz('UTC')->toAtomString()}}</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>
    @endforeach


    <url>
        <loc>https://codepin.org/casestudies</loc>
        <lastmod>2024-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>

    <url>
        <loc>https://codepin.org/contact</loc>
        <lastmod>2024-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>




</urlset>