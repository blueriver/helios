<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
		<!-- Footer -->
			<div id="footer" class="mura-twelve">
				<div class="container">
					<div class="row">

						<!-- Mura CMS RSS Feed -->
							<section class="4u">
								#$.dspComponent('[ Footer ] Mura CMS RSS Feed')#
							</section>

						<!-- Posts -->
							<section class="4u">
								#$.dspComponent('[ Footer ] Content List')#
							</section>

						<!-- Photos -->
							<section class="4u">
								#$.dspComponent('[ Footer ] Photos')#
							</section>

					</div>
					<hr />
					<div class="row">
						<div class="12u">

							<!-- Contact -->
								<section class="contact">
									#$.dspComponent('[ Footer ] Get in touch')#
								</section>

							<!-- Copyright -->
								<div class="copyright">
									<ul class="menu">
										<li>&copy; #Year(Now())# #HTMLEditFormat($.siteConfig('site'))#. All rights reserved.</li>
										<li>Design: <a href="http://html5up.net/">HTML5 UP</a></li>
										<li>Powered by: <a href="http://www.getmura.com">Mura CMS</a></li>
									</ul>
								</div>

						</div>

					</div>
				</div>
			</div>

	</body>
</html>
</cfoutput>
