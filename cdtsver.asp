<%@ Language = "VBScript" %>

<%

Function getFormVar (nm, dVal)
	dim rv
	rv = Request.Form(nm)
	if rv = "" then
		rv = Request.queryString(nm)
		if rv = "" then
			'Response.write "Setting rv to dVal.<br>"
			rv = dVal
		End if
	End if
	getFormVar = rv
End Function


Dim ver
Dim vers
Set vers = CreateObject("Scripting.Dictionary")
vers.add "rn", "Run"
for i = 49 to 22 step -1
	vers.add "v4_0_" & i, "4.0." & i
next


ver = "v4_0_39"

ver = getFormVar("verSel", ver)

%>

<!DOCTYPE html>
<!--[if lt IE 9]><html class="no-js lt-ie9" lang="en" dir="ltr"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js" lang="en" dir="ltr"><!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW) wet-boew.github.io/wet-boew/License-en.html / wet-boew.github.io/wet-boew/Licence-fr.html -->
		<title>Content page (<%=ver%>) - Canada.ca</title>
		<meta content="width=device-width,initial-scale=1" name="viewport">
		
		<script src="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/cdts/compiled/soyutils.js"></script>
		<script src="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/cdts/compiled/wet-en.js"></script>
		
		<noscript>
			<!-- Write closure fall-back static file -->
			<!-- /ROOT/app/cls/WET/gcweb/<%=ver%>/cdts/static/refTop.html -->
					<!--[if gte IE 9 | !IE ]><!-->
		<link href="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/assets/favicon.ico" rel="icon" type="image/x-icon">
		<link rel="stylesheet" href="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/css/theme.min.css">
		<link rel="stylesheet" href="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/cdts/cdtsfixes.css">
		<!-- Are you using the application templates? If so add the following CSS file -->
		<!-- <link rel="stylesheet" href="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/cdts/cdtsapps.css">-->
		<!--<![endif]-->
		<!--[if lt IE 9]>
		<link href="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/assets/favicon.ico" rel="shortcut icon" />
		<link rel="stylesheet" href="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/css/ie8-theme.min.css" />
		<![endif]-->
		<!--[if lte IE 9]><![endif]-->
		<link rel="stylesheet" href="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/css/noscript.min.css" />
		<link rel="stylesheet" href="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/cdts/cdtsnoscript.css" />
		</noscript>
		<!-- Write closure template -->
		<script>
			document.write(wet.builder.refTop({
				
				"isApplication": true
			}));
		</script>
	</head>
	<body vocab="http://schema.org/" typeof="WebPage">
		<div id="def-top">
			<!-- Write closure fall-back static file -->
			<!-- /ROOT/app/cls/WET/gcweb/<%=ver%>/cdts/static/appTop-en.html -->
					<ul id="wb-tphp">
			<li class="wb-slc"><a class="wb-sl" href="#wb-cont">Skip to main content</a></li>
			<li class="wb-slc visible-sm visible-md visible-lg"><a class="wb-sl" href="#wb-info">Skip to "About this Web application"</a></li>
			<!-- If you have a custom footer, replace the previous line with this one
			<li class="wb-slc visible-sm visible-md visible-lg"><a class="wb-sl" href="#wb-info">Skip to "Related links"</a></li>
			-->
			<!-- If you have a section menu 
			<li class="wb-slc visible-md visible-lg"><a class="wb-sl" href="#wb-sec">Skip to section menu</a></li>
			-->
		</ul>
		<header class="gc-app">
			<div id="wb-bnr" class="container">
				<!-- Adjust the default language flip URL or remove this <section>
				<section id="wb-lng" class="text-right">
					<h2 class="wb-inv">Language selection</h2>
					<ul class="list-inline margin-bottom-none">
						<li><a lang="fr" href="[Default URL for language flip]">Français</a></li>
					</ul>
				</section>
					-->
				<div class="row">
					<div class="brand col-xs-5 col-md-4">
						<a href="https://www.canada.ca/en.html">
							<img src="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/assets/sig-blk-en.svg" alt="" />
							<span class="wb-inv"> Government of Canada / <span lang="fr">Gouvernement du Canada</span></span>
						</a>
					</div>
					<!-- Adjust this search section depending on your application search
					<section id="wb-srch" class="col-lg-8 text-right visible-md visible-lg">
						<h2>Search</h2>
						<form action="#" method="post" name="cse-search-box" role="search" class="form-inline">
							<div class="form-group">
								<label for="wb-srch-q" class="wb-inv">Search Canada.ca</label>
								<input id="wb-srch-q" list="wb-srch-q-ac" class="wb-srch-q form-control" name="q" type="search" value="" size="34" maxlength="170" placeholder="Search">
							</div>
							<div class="form-group submit">
								<button type="submit" id="wb-srch-sub" class="btn btn-primary btn-small" name="wb-srch-sub"><span class="glyphicon-search glyphicon"></span><span class="wb-inv">Search</span></button>
							</div>
						</form>
					</section>
					-->
				</div>
			</div>
			<div class="app-bar">
				<div class="container">
					<div class="row">
						<!-- If you want to use the settings or sign in/out buttons then add col-sm-7 -->
						<section class="col-xs-12">
							<!-- Add in your application name and URL below -->
							<h2 class="wb-inv">Name of Web application</h2>
							<a class="app-name" href="[Your application URL]">[Your application name]</a>
						</section>
						<!-- If you want to use the settings or sign in/out buttons
						<nav class="col-sm-5 hidden-xs hidden-print">
							<h2 class="wb-inv">Account menu</h2>
							<ul class="app-list-account list-unstyled">
								<li><a href="#" class="btn"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Account settings</a></li>&#32;
								<li><a href="#" class="btn"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Sign out</a></li>
								<li><a href="#" class="btn"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Sign in</a></li>
							</ul>
						</nav>
						-->
					</div>
					
				</div>
			</div>
		
			<!-- Remove the whole <nav> if you want to disable breadcrumbs 
			<nav id="wb-bc" property="breadcrumb">
				<h2>You are here:</h2>
				<div class="container">
					<div class="row">
						<ol class="breadcrumb">
							<li><a href="#">[Insert breadcrumbs]</a></li>
						</ol>
					</div>
				</div>
			</nav> 
			-->
		</header>
		</div>
		<!-- Write closure template -->
		<script>
			var defTop = document.getElementById("def-top");
			defTop.outerHTML = wet.builder.appTop({
				
				"appName": [{"text": "CDTS Test", "href": "#"}],
				"lngLinks": [{"lang": "fr",	"href": "apptop_all-fr.shtml", "text": "Français"}],
				"appSettings": [{"href": "#"}],
				"signOut": [{"href": "#"}],
				"customSearch": "test",
				"breadcrumbs": [{
					"title": "My application",
					"href": "http://open.canada.ca/en/apps?_ga=2.158588857.2050402716.1501624806-1491110290.1492697601"
				}, {
					"title": "First section",
					"href": "#"
				}, {
					"title": "Service A"
				}],
				"menuLinks" : [{
					"href" : "/stream4/sc/msca-mdsc/portal-portail/pro/home-accueil/",
					"text" : "Home"
					}, {
					"text" : "Employment Insurance",
					"subLinks" : [{
							"subhref" : "/sc/msca-mdsc/portal-portail/pro/ei-ae/meiio-mraed/Pages/MyPayments.aspx?prov=13",
							"subtext" : "Payment information"
						}, {
							"subhref" : "/sc/msca-mdsc/portal-portail/pro/ei-ae/meiio-mraed/Pages/MyRoeList.aspx?prov=13",
							"subtext" : "Records of Employment"
						}, {
							"subhref" : "/sc/msca-mdsc/portal-portail/pro/ei-ae/meiio-mraed/Pages/MyCurrentClaim.aspx?prov=13",
							"subtext" : "Latest claim"
						}, {
							"subhref" : "/stream4/sc/msca-mdsc/portal-portail/pro/home-accueil/landing-page-ei",
							"subtext" : "Employment Insurance - More"
						}]
					}, {
						"id":"cppoasLink",
					"text" : "Canada Pension Plan/Old Age Security",
					"subLinks" : [{
							"subhref" : "/stream4/sc/msca-mdsc/portal-portail/pro/vupi-vupi/view-payment-information.action",
							"subtext" : "Payment information"
						}, {
							"subhref" : "/stream4/sc/msca-mdsc/portal-portail/pro/socv-vecc/auth/view-earnings-contributions.action",
							"subtext" : "CPP contributions"
						}, {
							"subhref" : "/stream4/sc/msca-mdsc/portal-portail/pro/vmas-vemd/view-application-status.action",
							"subtext" : "Application status"
						}, {
							"subhref" : "/stream4/sc/msca-mdsc/portal-portail/pro/home-accueil/landing-page-cpp-oas",
							"subtext" : "Canada Pension Plan/Old Age Security - More"
						}]
					}]
			});
		</script>
		<main property="mainContentOfPage" class="container">
		<h1 id="wb-cont" name="property">CDTS Test Page (<%=ver%>)</h1>
		<!-- <div data-ajax-replace="https://ssl-templates.services.gc.ca/app/cls/WET/gcweb/<%=ver%>/cdts/ajax/securesamples.html"></div> -->
			<h2>Select a CDTS version</h2>
			<p>Currently viewing CDTS version <%=ver%>.</p>
			<form action="cdtsver.asp" method="GET">
				<label for="verSel">Select CDTS version</label>
				<select id="verSel" name="verSel">
<%
					for Each id in vers
						Response.write String (5, vbTab) & "<option value='" & id & "'"
						if (id = ver) then Response.write " selected"
						Response.write ">" & vers.item(id) & "</option>" &  VbCrLf
					Next
%>
				</select>
				<div>
					<input type="submit" value="Go">
				</div>
			</form>
			<div class="row">
				<p><a href="#centred-popup-modal" aria-controls="centred-popup-modal" class="overlay-lnk" role="button">Centred popup - Modal (Lightbox + Modal)</a></p>

				<section id="centred-popup-modal" class="wb-overlay modal-content overlay-def">
					<header class="modal-header">
						<h2 class="modal-title">Centred popup - Modal (Lightbox + Modal)</h2>
					</header>
					<div class="modal-body">
						...
					</div>
				</section>
			</div>
			<div id="def-preFooter">
				<!-- Write closure fall-back static file -->
				<!-- /ROOT/app/cls/WET/gcweb/<%=ver%>/cdts/static/preFooter-en.html -->
				<div class="pagedetails">
	<div class="row">
		<div class="col-sm-6 col-md-5 col-lg-4">
			<a href="https://www.canada.ca/en/report-problem.html" class="btn btn-default text-center">Report a problem on this page</a>
		</div>
	</div>
	<!-- Share button -->
	<!-- <div class="wb-share col-sm-4 col-md-3 col-sm-offset-2 col-md-offset-4 col-lg-offset-5" data-wb-share='{"lnkClass": "btn btn-default btn-block"}'></div> -->
	<!-- END Share button -->
	<dl id="wb-dtmd">
		<dt>Date modified: </dt>
		<dd><time property="dateModified">2019-03-01</time></dd>
	</dl>
</div>

			</div>
			<!-- Write closure template -->
			<script>
				var defPreFooter = document.getElementById("def-preFooter");
				defPreFooter.outerHTML = wet.builder.preFooter({
					
					"dateModified": "2017-08-01"
				});
			</script>
		</main>
		<div id="def-footer">
			<!-- Write closure fall-back static file -->
			<!-- /ROOT/app/cls/WET/gcweb/<%=ver%>/cdts/static/appFooter-en.html -->
					<footer id="wb-info">
			<!-- If you have any related links, add them here
			<div class="landscape">
				<nav class="container wb-navcurr">
					<h2 class="wb-inv">Related links</h2>
					<ul class="list-unstyled colcount-sm-2 colcount-md-3">
						Add in your customized links below to populate the footer
						<li><a href="#">Link 1</a></li>
					</ul>
				</nav>
			</div>
			-->
			<div class="brand">
				<div class="container">
					<div class="row">
						<nav class="col-md-10 ftr-urlt-lnk">
							<h2 class="wb-inv">About this Web application</h2>
							<ul>
								<li><a href="https://www.canada.ca/en/contact.html">Contact information</a></li>
								<li><a href="https://www.canada.ca/en/transparency/terms.html">Terms and conditions</a></li>
								<li><a href="https://www.canada.ca/en/transparency/privacy.html">Privacy</a></li>
							</ul>
						</nav>
						<div class="col-xs-6 visible-sm visible-xs tofpg">
							<a href="#wb-cont">Top of Page <span class="glyphicon glyphicon-chevron-up"></span></a>
						</div>
						<div class="col-xs-6 col-md-2 text-right">
							<img src="https://www.canada.ca/etc/designs/canada/cdts/gcweb/<%=ver%>/assets/wmms-blk.svg" alt="Symbol of the Government of Canada" />
						</div>
					</div>
				</div>
			</div>
		</footer>

		</div>
		<!-- Write closure template -->
		<script>
			var defFooter = document.getElementById("def-footer");
			defFooter.outerHTML = wet.builder.appFooter({
				
				"showFeatures": false
			});
		</script>
		<!-- Write closure template -->
		<script>
			document.write(wet.builder.refFooter({
				
				"isApplication": true
			}));
		</script>
	</body>
</html>
