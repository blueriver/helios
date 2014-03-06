<!---
			This file is part of the Parallelism Mura CMS Theme
--->
<cfoutput>
	<cfset it = $.getItemsIterator() />
	<cfif it.hasNext()>
		<cfloop condition="it.hasNext()">
			<cfset item = it.next() />
			<cfset imgLarge = $.getURLForImage(fileid=item.getValue('fileid'), size='large') />
			<cfif Len(imgLarge)>
				<article class="item thumb" data-width="#item.getValue('portfolioThumbWidth')#">
					<h2>#HTMLEditFormat(item.getValue('menuTitle'))#</h2>
					<a href="#imgLarge#">
						<img src="#$.getURLForImage(fileid=item.getValue('fileid'), size='portfoliothumb')#" alt="#HTMLEditFormat(item.getValue('title'))#" />
					</a>
				</article>
			</cfif>
		</cfloop>
	</cfif>
</cfoutput>