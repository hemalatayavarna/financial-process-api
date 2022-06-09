fun getSiteId(site) = site match {
	case site if(site == Mule::p('constant.old.siteId.athelstoneJuniorPrimarySchool')) -> Mule::p('constant.new.siteId.athelstoneSchool') 
	case site if(site == Mule::p('constant.old.siteId.aarafieldGardensPrimarySchool')) -> Mule::p('constant.new.siteId.parafieldGardensR-7School') 
	case site if(site == Mule::p('constant.old.siteId.yalataAnanguSchool')) -> Mule::p('constant.new.siteId.oakValleyAboriginalSchool')  
	case site if(site == Mule::p('constant.old.siteId.warradalePrimarySchool')) -> Mule::p('constant.new.siteId.warradaleUrbanCampSchool')  
	case site if(site == Mule::p('constant.old.siteId.christieDownsPrimarySchool')) -> Mule::p('constant.new.siteId.christieDownsPrimarySchool')  
	case site if(site == Mule::p('constant.old.siteId.kingscoteCampus')) -> Mule::p('constant.new.siteId.kangarooIslandCommunityEducation')
	case site if(site == Mule::p('constant.old.siteId.MelaleucaPS')) -> Mule::p('constant.new.siteId.MelaleucaPS')
	case site if(site == Mule::p('constant.old.siteId.FlagstaffHillPS')) -> Mule::p('constant.new.siteId.FlagstaffHillPS')
	case site if(site == Mule::p('constant.old.siteId.McDonaldParkPS')) -> Mule::p('constant.new.siteId.McDonaldParkPS')
	case site if(site == Mule::p('constant.old.siteId.WynnValePS')) -> Mule::p('constant.new.siteId.WynnValePS')
	case site if(site == Mule::p('constant.old.siteId.BowdenBromptomCS')) -> Mule::p('constant.new.siteId.BowdenBromptomCS')
	else -> site
}

fun getChildParentMap(parentChildMap, site) = 
	(parentChildMap filter ((item, index) -> item.childSiteId == site and item.isActive))[0].parentSiteId default site