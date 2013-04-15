DROP TABLE IF EXISTS Areas;

CREATE TABLE IF NOT EXISTS `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

INSERT INTO Areas VALUES(89,1,'Header',0,0,0)
 ,(90,129,'Main',0,0,0)
 ,(91,1,'Ticker',0,0,1)
 ,(92,1,'Main',0,0,0)
 ,(93,127,'Main',0,0,0)
 ,(94,127,'Ticker',0,0,1)
 ,(95,150,'Ticker',0,0,1)
 ,(96,150,'Main',0,0,0)
 ,(97,154,'Main',0,0,0)
 ,(98,154,'Header',0,0,0)
 ,(99,154,'Ticker',0,0,1)
 ,(100,123,'Ticker',0,0,1)
 ,(101,123,'Header',0,0,0)
 ,(102,123,'Main',0,0,0)
 ,(103,1,'Project Info',0,0,0)
 ,(104,104,'Primary',0,0,0)
 ,(105,104,'Secondary 1',0,0,0)
 ,(106,104,'Secondary 2',0,0,0)
 ,(107,104,'Secondary 3',0,0,0)
 ,(108,104,'Secondary 4',0,0,0)
 ,(109,104,'Secondary 5',0,0,0)
 ,(110,136,'Main',0,0,0)
 ,(111,136,'Header',0,0,0)
 ,(112,136,'ImageCarousel',0,0,0)
 ,(113,136,'Ticker',0,0,1)
 ,(114,138,'Main',0,0,0)
 ,(115,138,'Header',0,0,0)
 ,(116,138,'Ticker',0,0,1)
 ,(117,138,'ImageCarousel',0,0,0)
 ,(118,123,'Project Info',0,0,0)
 ,(119,137,'Main',0,0,0)
 ,(120,137,'Header',0,0,0)
 ,(121,125,'Main',0,0,0)
 ,(122,125,'Header',0,0,0)
 ,(123,155,'Main',0,0,0)
 ,(124,155,'Header',0,0,0)
 ,(125,155,'Ticker',0,0,1)
 ,(126,156,'Main',0,0,0)
 ,(127,156,'Header',0,0,0)
 ,(128,1,'Persons Info',0,0,0)
 ,(129,159,'Ticker',0,0,1)
 ,(130,160,'Ticker',0,0,1)
 ,(131,160,'Main',0,0,0)
 ,(132,161,'Ticker',0,0,1)
 ,(133,161,'Main',0,0,0)
 ,(134,164,'Ticker',0,0,1)
 ,(135,164,'Main',0,0,0)
 ,(136,165,'Ticker',0,0,1)
 ,(137,165,'ImageCarousel',0,0,0)
 ,(138,165,'Header',0,0,0)
 ,(139,165,'Main',0,0,0)
 ,(140,152,'Main',0,0,0)
 ,(141,152,'Header',0,0,0);

DROP TABLE IF EXISTS AttributeKeys;

CREATE TABLE IF NOT EXISTS `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO AttributeKeys VALUES(1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0)
 ,(2,'meta_description','Meta Description',1,1,0,0,0,1,2,1,0)
 ,(3,'meta_keywords','Meta Keywords',1,1,0,0,0,1,2,1,0)
 ,(4,'icon_dashboard','Dashboard Icon',1,1,0,1,0,1,2,1,0)
 ,(5,'exclude_nav','Exclude From Nav',1,1,0,0,0,1,3,1,0)
 ,(6,'exclude_page_list','Exclude From Page List',1,1,0,0,0,1,3,1,0)
 ,(7,'header_extra_content','Header Extra Content',1,1,0,0,0,1,2,1,0)
 ,(8,'exclude_search_index','Exclude From Search Index',1,1,0,0,0,1,3,1,0)
 ,(9,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,0,1,3,1,0)
 ,(10,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,0,1,3,2,0)
 ,(11,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,0,1,3,2,0)
 ,(12,'width','Width',1,1,0,0,0,1,6,3,0)
 ,(13,'height','Height',1,1,0,0,0,1,6,3,0)
 ,(23,'BubbleHeading','BubbleHeading',0,0,0,0,0,1,1,1,0)
 ,(22,'PageLink','Sid länk',1,0,0,0,0,1,10,1,0)
 ,(21,'LinkImage','Länk bild',1,0,0,0,0,1,5,1,0)
 ,(20,'TagFilters','Filter Taggar',1,1,0,0,0,1,8,1,0)
 ,(24,'BubbleFooter','BubbleFooter',0,0,0,0,0,1,1,1,0)
 ,(25,'DisplayFirstPage','Visa på första sidan',1,1,0,0,0,1,3,1,0);

DROP TABLE IF EXISTS BlockTypes;

CREATE TABLE IF NOT EXISTS `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO BlockTypes VALUES(1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0)
 ,(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,0,400,400,0)
 ,(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0)
 ,(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0)
 ,(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0)
 ,(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0)
 ,(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0)
 ,(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,8,500,350,0)
 ,(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,3,580,380,0)
 ,(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,4,500,350,0)
 ,(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,5,370,100,0)
 ,(12,'file','File','Link to files stored in the asset library.',1,0,0,0,6,300,250,0)
 ,(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,7,380,200,0)
 ,(14,'form','Form','Build simple forms and surveys.',1,0,0,0,9,420,430,0)
 ,(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,10,400,200,0)
 ,(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,11,350,480,0)
 ,(17,'html','HTML','For adding HTML by hand.',1,0,0,0,12,600,465,0)
 ,(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,13,400,550,0)
 ,(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,14,430,400,0)
 ,(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,15,500,350,0)
 ,(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,16,400,330,0)
 ,(22,'search','Search','Add a search box to your site.',1,0,0,0,17,400,240,0)
 ,(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,18,550,400,0)
 ,(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,19,420,300,0)
 ,(25,'tags','Tags','List pages based on type, area.',1,0,0,0,20,450,260,0)
 ,(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,21,320,220,0)
 ,(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,22,400,210,0)
 ,(42,'competence','Kompetens','Block för kompetens',1,0,0,0,2,370,300,0);

DROP TABLE IF EXISTS CollectionSearchIndexAttributes;

CREATE TABLE IF NOT EXISTS `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_TagFilters` text,
  `ak_LinkImage` int(11) DEFAULT '0',
  `ak_PageLink` int(11) DEFAULT '0',
  `ak_BubbleHeading` text,
  `ak_BubbleFooter` text,
  `ak_DisplayFirstPage` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO CollectionSearchIndexAttributes VALUES(3,NULL,NULL,'blog, blogging','icon-book',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(4,NULL,NULL,'new blog, write blog, blogging','icon-pencil',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(5,NULL,NULL,'blog drafts,composer','icon-book',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(7,NULL,NULL,'pages, add page, delete page, copy, move, alias','icon-home',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(8,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk','icon-road',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(9,NULL,NULL,'find page, search page, search, find, pages, sitemap','icon-search',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(11,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute','icon-picture',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(12,NULL,NULL,'file, file attributes, title, attribute, description, rename','icon-cog',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(13,NULL,NULL,'files, category, categories','icon-list-alt',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(14,NULL,NULL,'new file set','icon-plus-sign',1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(15,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(16,NULL,NULL,'find, search, people, delete user, remove user, change password, password','icon-user',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(17,NULL,NULL,'user, group, people, permissions, access, expire','icon-globe',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(18,NULL,NULL,'user attributes, user data, gather data, registration data','icon-cog',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(19,NULL,NULL,'new user, create','icon-plus-sign',1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(20,NULL,NULL,'new user group, new group, group, create','icon-plus',1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(21,NULL,NULL,'group set','icon-list',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(22,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(23,NULL,NULL,'hits, pageviews, visitors, activity','icon-signal',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(24,NULL,NULL,'forms, questions, response, data','icon-briefcase',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(25,NULL,NULL,'questions, quiz, response','icon-tasks',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history','icon-time',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css','icon-font',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(29,NULL,NULL,'theme',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(30,NULL,NULL,'page types',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(31,NULL,NULL,'custom theme, change theme, custom css, css',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(32,NULL,NULL,'page type defaults, global block, global area, starter, template','icon-file',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(34,NULL,NULL,'page attributes, custom','icon-cog',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(35,NULL,NULL,'single, page, custom, application','icon-wrench',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(36,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(37,NULL,NULL,NULL,'icon-list',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(38,NULL,NULL,NULL,'icon-user',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(40,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo','icon-th',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(41,NULL,NULL,NULL,'icon-lock',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(42,NULL,NULL,NULL,NULL,1,0,NULL,1,0,NULL,0,0,NULL,NULL,0)
 ,(43,NULL,NULL,'block, refresh, custom','icon-wrench',0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(44,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(45,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(46,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(47,NULL,NULL,'update, upgrade',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(48,NULL,NULL,'concrete5.org, my account, marketplace',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(49,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(50,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(51,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(53,NULL,NULL,'website name, title',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(54,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(55,NULL,NULL,'tinymce, content block, fonts, editor, tinymce, content, overlay',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(56,NULL,NULL,'translate, translation, internationalization, multilingual, translate',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(57,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(58,NULL,NULL,'interface, quick nav, dashboard background, background image',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(60,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(61,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(62,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(63,NULL,NULL,'turn off statistics, tracking, statistics, pageviews, hits',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(64,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(66,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(67,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(68,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(70,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(71,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(72,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(73,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(76,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(77,NULL,NULL,'security, registration',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(78,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(79,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(81,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(82,NULL,NULL,'member profile, member page,community, forums, social, avatar',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(83,NULL,NULL,'signup, new user, community',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(84,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(85,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(86,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(87,NULL,NULL,'attribute configuration',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(88,NULL,NULL,'attributes, sets',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(89,NULL,NULL,'attributes, types',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(90,NULL,NULL,NULL,NULL,0,0,NULL,1,0,NULL,0,0,NULL,NULL,0)
 ,(91,NULL,NULL,'overrides, system info, debug, support,help',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(92,NULL,NULL,'errors,exceptions, develop, support, help',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(93,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, errors, log',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(94,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(95,NULL,NULL,'network, proxy server',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(96,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(98,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(99,NULL,NULL,'export, database, xml, starting, points, schema, refresh, custom, tables',NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(105,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(104,NULL,NULL,NULL,NULL,1,0,NULL,1,0,NULL,0,0,NULL,NULL,0)
 ,(1,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(123,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(127,NULL,NULL,NULL,NULL,0,0,NULL,0,0,'\nStrategi\nKrav\nLedning\nUX/Webb\nArkitektur/Utveckling\nQA/Test\n',0,0,NULL,NULL,0)
 ,(128,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(129,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(130,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(131,NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(132,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(125,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(137,NULL,NULL,NULL,NULL,1,0,NULL,0,0,'\nArkitektur/Utveckling\nQA/Test\n',0,0,NULL,NULL,0)
 ,(138,NULL,NULL,NULL,NULL,0,0,NULL,0,0,'\nStrategi\nUX/Webb\n',0,0,NULL,NULL,1)
 ,(136,NULL,NULL,NULL,NULL,0,0,NULL,0,0,'\nStrategi\nKrav\nUX/Webb\n',2,0,NULL,NULL,1)
 ,(140,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(142,NULL,NULL,NULL,NULL,1,0,NULL,0,0,'\nKrav\nLedning\nUX/Webb\n',2,0,NULL,NULL,0)
 ,(147,NULL,NULL,NULL,NULL,1,0,NULL,0,0,'\n',0,0,NULL,NULL,0)
 ,(149,NULL,NULL,NULL,NULL,1,1,NULL,1,1,'\nStrategi\nKrav\nLedning\nUX/Webb\nArkitektur/Utveckling\nQA/Test\n',0,123,'Just nu söker vi:','Till Karriär',0)
 ,(150,NULL,NULL,NULL,NULL,0,0,NULL,0,0,'\nStrategi\nKrav\nLedning\nUX/Webb\nArkitektur/Utveckling\nQA/Test\n',0,0,NULL,NULL,0)
 ,(152,NULL,NULL,NULL,NULL,0,0,NULL,0,0,'\nUX/Webb\n',7,0,NULL,NULL,0)
 ,(154,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(155,NULL,NULL,NULL,NULL,1,0,NULL,0,0,'\nKrav\nLedning\nQA/Test\n',2,0,NULL,NULL,1)
 ,(156,NULL,NULL,NULL,NULL,1,0,NULL,0,0,'\nStrategi\nUX/Webb\nQA/Test\n',1,0,NULL,NULL,1)
 ,(159,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(160,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(161,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(162,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(163,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(164,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,0,NULL,NULL,0)
 ,(165,NULL,NULL,NULL,NULL,0,0,NULL,0,0,'\nKrav\nArkitektur/Utveckling\n',3,0,NULL,NULL,0);

DROP TABLE IF EXISTS CollectionVersionAreaLayouts;

CREATE TABLE IF NOT EXISTS `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CollectionVersionBlocks;

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersionBlocks VALUES(105,1,1,'Header',0,1,0,0)
 ,(105,1,2,'Column 1',0,1,0,0)
 ,(105,1,3,'Column 2',0,1,0,0)
 ,(105,1,4,'Column 3',0,1,0,0)
 ,(105,1,5,'Column 4',0,1,0,0)
 ,(104,1,6,'Primary',0,1,0,0)
 ,(104,1,7,'Primary',1,1,0,0)
 ,(104,1,8,'Secondary 1',0,1,0,0)
 ,(104,1,9,'Secondary 2',0,1,0,0)
 ,(104,1,10,'Secondary 3',0,1,0,0)
 ,(104,1,11,'Secondary 4',0,1,0,0)
 ,(104,1,12,'Secondary 5',0,1,0,0)
 ,(129,2,13,'Main',0,1,0,0)
 ,(130,2,14,'Main',0,1,0,0)
 ,(1,5,15,'Main',0,1,0,0)
 ,(1,6,15,'Header',0,0,0,0)
 ,(131,3,17,'Header',0,1,0,0)
 ,(1,7,16,'Header',0,1,0,0)
 ,(131,3,18,'Main',0,1,0,0)
 ,(125,1,19,'Main',0,1,0,0)
 ,(125,1,20,'Header',0,1,0,0)
 ,(136,2,21,'Main',0,1,0,0)
 ,(136,2,22,'Header',0,1,0,0)
 ,(137,1,19,'Main',0,0,0,0)
 ,(137,1,20,'Header',0,0,0,0)
 ,(138,1,19,'Main',0,0,0,0)
 ,(138,1,20,'Header',0,0,0,0)
 ,(136,3,21,'Main',0,0,0,0)
 ,(136,3,22,'Header',0,0,0,0)
 ,(137,2,19,'Main',0,0,0,0)
 ,(137,2,20,'Header',0,0,0,0)
 ,(138,2,19,'Main',0,0,0,0)
 ,(138,2,20,'Header',0,0,0,0)
 ,(136,4,21,'Main',0,0,0,0)
 ,(136,4,22,'Header',0,0,0,0)
 ,(136,4,23,'ImageCarousel',0,1,0,0)
 ,(136,4,24,'ImageCarousel',1,1,0,0)
 ,(136,4,25,'ImageCarousel',2,1,0,0)
 ,(136,5,21,'Main',0,0,0,0)
 ,(136,5,22,'Header',0,0,0,0)
 ,(136,5,23,'ImageCarousel',0,0,0,0)
 ,(136,5,24,'ImageCarousel',1,0,0,0)
 ,(136,5,25,'ImageCarousel',2,0,0,0)
 ,(139,1,19,'Main',0,0,0,0)
 ,(139,1,20,'Header',0,0,0,0)
 ,(141,1,19,'Main',0,0,0,0)
 ,(141,1,20,'Header',0,0,0,0)
 ,(142,1,19,'Main',0,0,0,0)
 ,(142,1,20,'Header',0,0,0,0)
 ,(143,1,19,'Main',0,0,0,0)
 ,(143,1,20,'Header',0,0,0,0)
 ,(144,1,19,'Main',0,0,0,0)
 ,(144,1,20,'Header',0,0,0,0)
 ,(145,1,19,'Main',0,0,0,0)
 ,(145,1,20,'Header',0,0,0,0)
 ,(146,1,19,'Main',0,0,0,0)
 ,(146,1,20,'Header',0,0,0,0)
 ,(147,1,19,'Main',0,0,0,0)
 ,(149,4,27,'Main',0,1,0,0)
 ,(147,1,26,'Header',0,1,0,0)
 ,(149,5,27,'Main',0,0,0,0)
 ,(127,3,28,'Main',0,1,0,0)
 ,(152,2,29,'Main',0,1,0,0)
 ,(154,3,51,'Main',1,1,0,0)
 ,(154,3,50,'Main',3,1,0,0)
 ,(154,3,52,'Main',2,1,0,0)
 ,(154,3,53,'Main',4,1,0,0)
 ,(154,3,54,'Main',0,1,0,0)
 ,(154,3,55,'Main',5,1,0,0)
 ,(154,5,58,'Main',1,1,0,0)
 ,(154,4,51,'Main',1,0,0,0)
 ,(154,4,52,'Main',2,0,0,0)
 ,(154,4,50,'Main',3,0,0,0)
 ,(154,4,53,'Main',4,0,0,0)
 ,(154,4,55,'Main',5,0,0,0)
 ,(154,4,56,'Main',0,1,0,0)
 ,(154,5,59,'Main',2,1,0,0)
 ,(154,5,60,'Main',3,1,0,0)
 ,(154,5,61,'Main',4,1,0,0)
 ,(154,5,62,'Main',5,1,0,0)
 ,(154,6,57,'Main',0,0,0,0)
 ,(154,5,57,'Main',0,1,0,0)
 ,(154,6,58,'Main',1,0,0,0)
 ,(154,6,59,'Main',2,0,0,0)
 ,(154,6,60,'Main',3,0,0,0)
 ,(154,6,61,'Main',4,0,0,0)
 ,(154,6,62,'Main',5,0,0,0)
 ,(154,6,63,'Header',0,1,0,0)
 ,(1,8,16,'Header',0,0,0,0)
 ,(1,9,16,'Header',0,0,0,0)
 ,(1,9,64,'Project Info',0,1,0,0)
 ,(136,6,21,'Main',0,0,0,0)
 ,(136,6,22,'Header',0,0,0,0)
 ,(136,6,23,'ImageCarousel',0,0,0,0)
 ,(136,6,24,'ImageCarousel',1,0,0,0)
 ,(136,6,25,'ImageCarousel',2,0,0,0)
 ,(138,3,19,'Main',0,0,0,0)
 ,(138,3,20,'Header',0,0,0,0)
 ,(155,1,19,'Main',0,0,0,0)
 ,(155,1,20,'Header',0,0,0,0)
 ,(156,1,19,'Main',0,0,0,0)
 ,(156,1,20,'Header',0,0,0,0)
 ,(1,10,16,'Header',0,0,0,0)
 ,(1,11,16,'Header',0,0,0,0)
 ,(1,10,65,'Project Info',0,1,0,0)
 ,(1,12,16,'Header',0,0,0,0)
 ,(1,11,66,'Project Info',0,1,0,0)
 ,(1,13,16,'Header',0,0,0,0)
 ,(1,12,67,'Project Info',0,1,0,0)
 ,(1,13,67,'Project Info',0,0,0,0)
 ,(1,13,68,'Persons Info',0,1,0,0)
 ,(1,14,16,'Header',0,0,0,0)
 ,(1,14,67,'Project Info',0,0,0,0)
 ,(160,3,70,'Main',0,1,0,0)
 ,(1,14,69,'Persons Info',0,1,0,0)
 ,(160,4,70,'Main',0,0,0,0)
 ,(165,1,72,'Header',0,1,0,0)
 ,(127,4,71,'Main',0,1,0,0)
 ,(165,1,73,'Main',0,1,0,0);

DROP TABLE IF EXISTS CollectionVersions;

CREATE TABLE IF NOT EXISTS `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersions VALUES(1,1,'Home','home','','2012-11-29 14:17:29','2012-11-29 14:17:29','Initial Version',0,0,1,NULL,5,4,NULL)
 ,(2,1,'Dashboard','dashboard','','2012-11-29 14:17:33','2012-11-29 14:17:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(3,1,'Composer','composer','Write for your site.','2012-11-29 14:17:33','2012-11-29 14:17:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(4,1,'Write','write','','2012-11-29 14:17:33','2012-11-29 14:17:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(5,1,'Drafts','drafts','','2012-11-29 14:17:33','2012-11-29 14:17:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(6,1,'Sitemap','sitemap','Whole world at a glance.','2012-11-29 14:17:33','2012-11-29 14:17:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(7,1,'Full Sitemap','full','','2012-11-29 14:17:33','2012-11-29 14:17:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(8,1,'Flat View','explore','','2012-11-29 14:17:33','2012-11-29 14:17:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(9,1,'Page Search','search','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(10,1,'Files','files','All documents and images.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(11,1,'File Manager','search','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(12,1,'Attributes','attributes','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(13,1,'File Sets','sets','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(14,1,'Add File Set','add_set','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(16,1,'Search Users','search','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(17,1,'User Groups','groups','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(18,1,'Attributes','attributes','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(19,1,'Add User','add','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(20,1,'Add Group','add_group','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(21,1,'Group Sets','group_sets','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(22,1,'Reports','reports','Get data from forms and logs.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(23,1,'Statistics','statistics','View your site activity.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(24,1,'Form Results','forms','Get submission data.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(25,1,'Surveys','surveys','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(26,1,'Logs','logs','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(27,1,'Pages & Themes','pages','Reskin your site.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(28,1,'Themes','themes','Reskin your site.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(29,1,'Add','add','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(30,1,'Inspect','inspect','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(31,1,'Customize','customize','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(32,1,'Page Types','types','What goes in your site.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(33,1,'Add Page Type','add','Add page types to your site.','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(34,1,'Attributes','attributes','','2012-11-29 14:17:34','2012-11-29 14:17:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(35,1,'Single Pages','single','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(36,1,'Workflow','workflow','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(37,1,'Workflow List','list','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(38,1,'Waiting for Me','me','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(39,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(40,1,'Stacks','stacks','Share content across your site.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(41,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(42,1,'Stack List','list','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(43,1,'Block Types','types','Manage the installed block types in your site.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(44,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(45,1,'Dashboard','news','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(46,1,'Add Functionality','install','Install add-ons & themes.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(47,1,'Update Add-Ons','update','Update your installed packages.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(48,1,'Connect to the Community','connect','Connect to the concrete5 community.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(49,1,'Get More Themes','themes','Download themes from concrete5.org.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(50,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(51,1,'System & Settings','system','Secure and setup your site.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(52,1,'Basics','basics','Basic information about your website.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(53,1,'Site Name','site_name','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(54,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(55,1,'Rich Text Editor','editor','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(56,1,'Languages','multilingual','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(57,1,'Time Zone','timezone','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(58,1,'Interface Preferences','interface','','2012-11-29 14:17:35','2012-11-29 14:17:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(59,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(60,1,'Pretty URLs','urls','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(61,1,'Bulk SEO Updater','bulk_seo_tool','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(62,1,'Tracking Codes','tracking_codes','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(63,1,'Statistics','statistics','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(64,1,'Search Index','search_index','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(65,1,'Optimization','optimization','Keep your site running well.','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(66,1,'Cache & Speed Settings','cache','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(67,1,'Clear Cache','clear_cache','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(68,1,'Automated Jobs','jobs','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(69,1,'Permissions & Access','permissions','Control who sees and edits your site.','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(70,1,'Site Access','site','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(71,1,'File Manager Permissions','files','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(72,1,'Allowed File Types','file_types','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(73,1,'Task Permissions','tasks','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(74,1,'User Permissions','users','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(75,1,'Advanced Permissions','advanced','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(76,1,'IP Blacklist','ip_blacklist','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(77,1,'Captcha Setup','captcha','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(78,1,'Spam Control','antispam','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(79,1,'Maintenance Mode','maintenance_mode','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(80,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(81,1,'Login Destination','postlogin','','2012-11-29 14:17:36','2012-11-29 14:17:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(82,1,'Public Profiles','profiles','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(83,1,'Public Registration','public_registration','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(84,1,'Email','mail','Control how your site send and processes mail.','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(85,1,'SMTP Method','method','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(86,1,'Email Importers','importers','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(87,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(88,1,'Sets','sets','Group attributes into sets for easier organization','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(89,1,'Types','types','Choose which attribute types are available for different items.','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(90,1,'Environment','environment','Advanced settings for web developers.','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(91,1,'Environment Information','info','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(92,1,'Debug Settings','debug','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(93,1,'Logging Settings','logging','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(94,1,'File Storage Locations','file_storage_locations','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(95,1,'Proxy Server','proxy','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(96,1,'Backup & Restore','backup_restore','Backup or restore your website.','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(97,1,'Backup Database','backup','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(98,1,'Update concrete5','update','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(99,1,'Database XML','database','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(100,1,'Composer','composer','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(101,1,'',NULL,NULL,'2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,NULL,NULL,0,1,NULL)
 ,(102,1,'',NULL,NULL,'2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,NULL,NULL,0,2,NULL)
 ,(103,1,'',NULL,NULL,'2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,NULL,NULL,0,3,NULL)
 ,(104,1,'Customize Dashboard Home','home','','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,2,NULL)
 ,(105,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2012-11-29 14:17:37','2012-11-29 14:17:37','Initial Version',1,0,1,NULL,5,3,NULL)
 ,(106,1,'Drafts','!drafts','','2012-11-29 14:17:40','2012-11-29 14:17:40','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(107,1,'Trash','!trash','','2012-11-29 14:17:40','2012-11-29 14:17:40','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(108,1,'Stacks','!stacks','','2012-11-29 14:17:40','2012-11-29 14:17:40','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(109,1,'Login','login','','2012-11-29 14:17:40','2012-11-29 14:17:40','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(110,1,'Register','register','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(111,1,'Profile','profile','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(112,1,'Edit','edit','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(113,1,'Avatar','avatar','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(114,1,'Messages','messages','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(115,1,'Friends','friends','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(116,1,'Page Not Found','page_not_found','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(117,1,'Page Forbidden','page_forbidden','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(118,1,'Download File','download_file','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(119,1,'Members','members','','2012-11-29 14:17:41','2012-11-29 14:17:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(120,1,'','','','2012-11-29 14:17:00','2012-11-29 14:17:42','Initial Version',1,0,NULL,NULL,0,4,NULL)
 ,(125,1,'','','','2012-11-30 12:47:00','2012-11-30 12:47:20','Version 2',1,0,NULL,1,0,6,NULL)
 ,(122,1,'Menu','menu',NULL,'2012-11-29 15:06:56','2012-11-29 15:06:56','Initial Version',1,0,1,NULL,5,1,NULL)
 ,(123,1,'Test','test','asdasdasdasdsada','2012-11-30 10:34:00','2012-11-30 10:34:56','Version 1',1,0,1,1,5,4,NULL)
 ,(124,1,'Bootstrap Header Nav','bootstrap-header-nav',NULL,'2012-11-30 11:41:18','2012-11-30 11:41:18','Initial Version',1,0,1,NULL,5,1,NULL)
 ,(126,1,'',NULL,NULL,'2012-11-30 12:52:09','2012-11-30 12:52:09','Initial Version',1,0,NULL,NULL,0,7,NULL)
 ,(127,1,'Projekt','projekt','','2012-11-30 12:52:00','2012-11-30 12:52:34','Version 1',0,0,1,1,5,7,NULL)
 ,(128,1,'Strategi-och-krav','strategi-och-krav','descriptioooon','2012-11-30 13:43:00','2012-11-30 13:46:48','Initial Version',1,0,1,1,5,6,NULL)
 ,(129,1,'Ticker','ticker',NULL,'2012-12-03 12:54:36','2012-12-03 12:54:36','Initial Version',0,0,1,NULL,5,1,NULL)
 ,(129,2,'Ticker','ticker',NULL,'2012-12-03 12:54:36','2012-12-03 12:55:14','New Version 2',1,0,1,1,5,1,NULL)
 ,(1,2,'Home','home','','2012-11-29 14:17:29','2012-12-03 12:55:15','Version 2',0,0,1,1,5,4,NULL)
 ,(130,1,'footer','footer',NULL,'2012-12-03 13:00:07','2012-12-03 13:00:07','Initial Version',0,0,NULL,NULL,5,1,NULL)
 ,(130,2,'footer','footer',NULL,'2012-12-03 13:00:07','2012-12-03 13:00:47','New Version 2',0,0,1,1,5,1,NULL)
 ,(1,3,'Home','home','','2012-11-29 14:17:29','2012-12-03 13:00:47','Version 3',0,0,1,1,5,4,NULL)
 ,(130,3,'footer','footer',NULL,'2012-12-03 13:00:07','2012-12-03 13:04:50','New Version 3',1,0,1,1,5,1,NULL)
 ,(1,4,'Home','home','','2012-11-29 14:17:29','2012-12-03 13:04:50','Version 4',0,0,1,1,5,4,NULL)
 ,(1,5,'Home','home','','2012-11-29 14:17:29','2012-12-03 14:54:11','Version 5',0,0,1,1,5,4,NULL)
 ,(1,6,'Home','home','','2012-11-29 14:17:29','2012-12-03 15:17:24','Version 6',0,0,1,1,5,4,NULL)
 ,(1,7,'Home','home','','2012-11-29 14:17:29','2012-12-03 15:31:36','Version 7',0,0,1,1,5,4,NULL)
 ,(131,1,'','','','2012-12-04 08:58:00','2012-12-04 08:58:34','Initial Version',0,0,1,1,5,6,NULL)
 ,(131,2,'testar lite projekt','testar-lite-projekt','blablabla','2012-12-04 08:58:00','2012-12-04 08:59:07','New Version 2',0,0,1,1,5,6,NULL)
 ,(136,1,'SEB','seb','\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','2012-12-04 09:11:00','2012-12-04 09:12:02','Initial Version',0,0,1,1,5,6,NULL)
 ,(132,1,'HM','hm','asdasdasd','2012-12-04 08:59:00','2012-12-04 08:59:27','Initial Version',1,0,1,1,5,6,NULL)
 ,(133,1,'Strategi-och-krav 2','strategi-och-krav-2','descriptioooon','2012-11-30 13:43:00','2012-12-04 08:59:54','Initial Version',1,0,1,NULL,5,6,NULL)
 ,(134,1,'','','','2012-12-04 08:58:00','2012-12-04 09:00:00','Initial Version',0,0,1,NULL,5,6,NULL)
 ,(134,2,'testar lite projekt 2','testar-lite-projekt-2','blablabla','2012-12-04 08:58:00','2012-12-04 09:00:01','New Version 2',1,0,1,NULL,5,6,NULL)
 ,(135,1,'HM 2','hm-2','asdasdasd','2012-12-04 08:59:00','2012-12-04 09:00:07','Initial Version',1,0,1,NULL,5,6,NULL)
 ,(131,3,'testar lite projekt','testar-lite-projekt','blablabla','2012-12-04 08:58:00','2012-12-04 09:10:19','Version 3',1,0,1,1,5,6,NULL)
 ,(136,2,'SEB','seb','\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','2012-12-04 09:11:00','2012-12-04 09:13:30','Version 2',0,0,1,1,5,6,NULL)
 ,(137,1,'Scania','scania','','2012-12-04 09:14:00','2012-12-04 09:14:07','Version 1',0,0,1,1,5,6,NULL)
 ,(138,1,'Avanza','avanza','','2012-12-04 09:14:00','2012-12-04 09:14:38','Version 1',0,0,1,1,5,6,NULL)
 ,(127,2,'Projekt','projekt','','2012-11-30 12:52:00','2012-12-10 09:34:39','Version 2',0,0,1,1,5,7,NULL)
 ,(136,4,'SEB','seb','\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','2012-12-04 09:11:00','2012-12-11 14:21:38','Version 4',0,0,1,1,5,6,NULL)
 ,(136,3,'SEB','seb','\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','2012-12-04 09:11:00','2012-12-10 10:00:11','New Version 3',0,0,1,1,5,6,NULL)
 ,(137,2,'Scania','scania','','2012-12-04 09:14:00','2012-12-10 10:00:18','New Version 2',1,0,1,1,5,6,NULL)
 ,(138,2,'Avanza','avanza','','2012-12-04 09:14:00','2012-12-10 10:00:28','New Version 2',0,0,1,1,5,6,NULL)
 ,(136,5,'SEB','seb','\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','2012-12-04 09:11:00','2012-12-13 12:02:05','New Version 5',0,0,1,1,5,6,NULL)
 ,(139,1,'avanza','avanza','','2012-12-13 12:21:00','2012-12-13 12:22:17','Initial Version',0,1,1,NULL,5,6,NULL)
 ,(140,1,'Projekt','projekt','','2012-12-13 12:23:00','2012-12-13 12:23:14','Initial Version',1,0,1,1,5,7,NULL)
 ,(141,1,'Avanza','avanza','','2012-12-13 12:23:00','2012-12-13 12:24:00','Initial Version',0,1,1,NULL,5,6,NULL)
 ,(142,1,'Test','test','testin','2012-12-13 12:31:00','2012-12-13 12:31:30','Initial Version',1,0,1,1,5,6,NULL)
 ,(143,1,'testarlitemer','testarlitemer','dsfsdfsd','2012-12-13 12:31:00','2012-12-13 12:31:58','Initial Version',0,1,1,NULL,5,6,NULL)
 ,(144,1,'','','','2012-12-13 13:11:00','2012-12-13 13:11:56','Version 1',0,0,1,NULL,5,6,NULL)
 ,(145,1,'','','','2012-12-13 13:13:00','2012-12-13 13:13:39','Initial Version',0,1,1,NULL,5,6,NULL)
 ,(146,1,'testtset','testtset','asdad','2012-12-13 13:14:00','2012-12-13 13:14:11','Version 1',0,0,1,NULL,5,6,NULL)
 ,(147,1,'asdasd','asdasd','','2012-12-13 13:18:00','2012-12-13 13:18:34','Version 1',1,0,1,1,5,6,NULL)
 ,(148,1,'',NULL,NULL,'2012-12-13 17:28:46','2012-12-13 17:28:46','Initial Version',1,0,NULL,NULL,0,8,NULL)
 ,(149,1,'Scrum-master','scrum-master','','2012-12-13 17:29:00','2012-12-13 17:30:47','Initial Version',0,0,1,1,5,8,NULL)
 ,(149,2,'Scrum-master','scrum-master','Just nu söker vi:\r\nScrum-\r\nMaster','2012-12-13 17:29:00','2012-12-13 17:58:42','New Version 2',0,0,1,1,5,8,NULL)
 ,(149,3,'Scrum-master','scrum-master','Just nu söker vi:<br/>\r\nScrum-<br/>\r\nMaster','2012-12-13 17:29:00','2012-12-13 17:59:28','New Version 3',0,0,1,1,5,8,NULL)
 ,(149,4,'Scrum-master','scrum-master','Just nu söker vi:<br/>\r\nScrum-<br/>\r\nMaster','2012-12-13 17:29:00','2012-12-14 12:39:51','Version 4',0,0,1,1,5,8,NULL)
 ,(149,5,'Scrum-master','scrum-master','Just nu söker vi:<br/>\r\nScrum-<br/>\r\nMaster','2012-12-13 17:29:00','2012-12-14 12:45:53','Version 5',1,0,1,1,5,8,NULL)
 ,(127,3,'Projekt','projekt','','2012-11-30 12:52:00','2012-12-17 13:43:16','Version 3',0,0,1,1,5,7,NULL)
 ,(150,1,'Medarbetare','medarbetare','','2012-12-17 14:10:00','2012-12-17 14:10:24','Initial Version',0,0,1,1,5,7,NULL)
 ,(150,2,'Medarbetare','medarbetare','','2012-12-17 14:10:00','2012-12-17 14:10:56','Version 2',1,0,1,1,5,7,NULL)
 ,(151,1,'',NULL,NULL,'2012-12-17 14:18:33','2012-12-17 14:18:33','Initial Version',1,0,NULL,NULL,0,9,NULL)
 ,(152,1,'Marcus Kremel','marcus-kremel','','2012-12-17 14:20:00','2012-12-17 14:22:03','Initial Version',0,0,1,1,5,9,NULL)
 ,(152,2,'Marcus Kremel','marcus-kremel','','2012-12-17 14:20:00','2012-12-17 14:24:20','Version 2',1,0,1,1,5,9,NULL)
 ,(153,1,'',NULL,NULL,'2012-12-17 17:09:42','2012-12-17 17:09:42','Initial Version',1,0,NULL,NULL,0,10,NULL)
 ,(154,1,'Kompetenser','kompetenser','','2012-12-17 17:09:00','2012-12-17 17:09:59','Initial Version',0,0,1,1,5,10,NULL)
 ,(154,2,'Kompetenser','kompetenser','','2012-12-17 17:09:00','2012-12-17 17:23:51','New Version 2',0,0,1,1,5,10,NULL)
 ,(154,3,'Kompetenser','kompetenser','','2012-12-17 17:09:00','2012-12-18 12:49:26','Version 3',0,0,1,1,5,10,NULL)
 ,(154,4,'Kompetenser','kompetenser','','2012-12-17 17:09:00','2012-12-18 13:59:41','Version 4',0,0,1,1,5,10,NULL)
 ,(154,5,'Kompetenser','kompetenser','','2012-12-17 17:09:00','2012-12-18 13:59:54','Version 5',0,0,1,1,5,10,NULL)
 ,(154,6,'Kompetenser','kompetenser','','2012-12-17 17:09:00','2012-12-18 14:23:01','Version 6',1,0,1,1,5,10,NULL)
 ,(1,8,'Home','home','','2012-11-29 14:17:00','2012-12-19 12:58:27','New Version 8',0,0,1,1,5,4,NULL)
 ,(1,9,'Home','home','','2012-11-29 14:17:00','2012-12-19 13:31:45','Version 9',0,0,1,1,5,4,NULL)
 ,(136,6,'SEB','seb','\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','2012-12-04 09:11:00','2012-12-19 13:48:27','New Version 6',1,0,1,1,5,6,NULL)
 ,(138,3,'Avanza','avanza','','2012-12-04 09:14:00','2012-12-19 13:48:55','Version 3',1,0,1,1,5,6,NULL)
 ,(155,1,'HM','hm','','2012-12-19 14:45:00','2012-12-19 14:45:36','Initial Version',1,0,1,1,5,6,NULL)
 ,(156,1,'testest','testest','','2012-12-19 14:46:00','2012-12-19 14:47:05','Initial Version',1,0,1,1,5,6,NULL)
 ,(1,10,'Home','home','','2012-11-29 14:17:00','2012-12-19 14:51:55','Version 10',0,0,1,1,5,4,NULL)
 ,(1,11,'Home','home','','2012-11-29 14:17:00','2012-12-19 15:02:02','Version 11',0,0,1,1,5,4,NULL)
 ,(1,12,'Home','home','','2012-11-29 14:17:00','2012-12-19 15:09:41','Version 12',0,0,1,1,5,4,NULL)
 ,(1,13,'Home','home','','2012-11-29 14:17:00','2012-12-19 15:16:52','Version 13',0,0,1,1,5,4,NULL)
 ,(1,14,'Home','home','','2012-11-29 14:17:00','2012-12-19 15:17:12','Version 14',1,0,1,1,5,4,NULL)
 ,(157,1,'',NULL,NULL,'2012-12-20 14:09:00','2012-12-20 14:09:00','Initial Version',1,0,NULL,NULL,0,11,NULL)
 ,(158,1,'',NULL,NULL,'2012-12-20 14:10:29','2012-12-20 14:10:29','Initial Version',1,0,NULL,NULL,0,12,NULL)
 ,(159,1,'Aktuellt','aktuellt','','2012-12-20 14:10:00','2012-12-20 14:11:01','Initial Version',0,0,1,1,5,11,NULL)
 ,(160,1,'Internet of things','internet-things','','2012-12-20 14:11:00','2012-12-20 14:11:46','Initial Version',0,0,1,1,5,12,NULL)
 ,(161,1,'Hemnets nya sida nominerad','hemnets-nya-sida-nominerad','','2012-12-20 14:11:00','2012-12-20 14:12:13','Initial Version',0,0,1,1,5,12,NULL)
 ,(162,1,'Beamon gillar mountain lion','beamon-gillar-mountain-lion','','2012-12-20 14:12:00','2012-12-20 14:12:45','Initial Version',0,0,1,1,5,11,NULL)
 ,(163,1,'Årets konferans till Ibiza','arets-konferans-till-ibiza','','2012-12-20 14:12:00','2012-12-20 14:13:05','Initial Version',0,0,1,1,5,11,NULL)
 ,(159,2,'Aktuellt','aktuellt','','2012-12-20 14:10:00','2012-12-20 14:16:32','New Version 2',1,0,1,1,5,12,NULL)
 ,(160,2,'Internet of things','internet-things','','2012-12-20 14:11:00','2012-12-20 14:50:34','New Version 2',0,0,1,1,5,11,NULL)
 ,(164,1,'Namnet','namnet','description blalbalbla\r\n','2004-12-22 10:36:00','2012-12-21 10:37:21','Version 1',1,0,1,1,5,11,NULL)
 ,(161,2,'Hemnets nya sida nominerad','hemnets-nya-sida-nominerad','','2012-12-20 14:11:00','2012-12-20 14:50:41','New Version 2',1,0,1,1,5,11,NULL)
 ,(162,2,'Beamon gillar mountain lion','beamon-gillar-mountain-lion','','2012-12-20 14:12:00','2012-12-20 14:50:49','New Version 2',1,0,1,1,5,11,NULL)
 ,(163,2,'Årets konferans till Ibiza','arets-konferans-till-ibiza','','2012-12-20 14:12:00','2012-12-20 14:50:57','New Version 2',1,0,1,1,5,11,NULL)
 ,(160,3,'Internet of things','internet-things','','2012-12-20 14:11:00','2012-12-20 15:22:42','Version 3',0,0,1,1,5,11,NULL)
 ,(160,4,'Internet of things','internet-things','descccc\r\n','2012-12-20 14:11:00','2012-12-21 12:27:13','New Version 4',1,0,1,1,5,11,NULL)
 ,(127,4,'Projekt','projekt','','2012-11-30 12:52:00','2012-12-21 13:48:09','Version 4',1,0,1,1,5,7,NULL)
 ,(165,1,'test test test','test-test-teste','blalsgblsadfdsdfsdfsd fsdfsdf','2012-12-21 13:52:00','2012-12-21 13:53:05','Version 1',1,0,1,1,5,9,NULL);

DROP TABLE IF EXISTS Collections;

CREATE TABLE IF NOT EXISTS `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

INSERT INTO Collections VALUES(1,'2012-11-29 14:17:29','2012-12-19 15:17:14','home')
 ,(2,'2012-11-29 14:17:33','2012-11-29 14:17:33','dashboard')
 ,(3,'2012-11-29 14:17:33','2012-11-29 14:17:33','composer')
 ,(4,'2012-11-29 14:17:33','2012-11-29 14:17:33','write')
 ,(5,'2012-11-29 14:17:33','2012-11-29 14:17:33','drafts')
 ,(6,'2012-11-29 14:17:33','2012-11-29 14:17:33','sitemap')
 ,(7,'2012-11-29 14:17:33','2012-11-29 14:17:33','full')
 ,(8,'2012-11-29 14:17:33','2012-11-29 14:17:34','explore')
 ,(9,'2012-11-29 14:17:34','2012-11-29 14:17:34','search')
 ,(10,'2012-11-29 14:17:34','2012-11-29 14:17:34','files')
 ,(11,'2012-11-29 14:17:34','2012-11-29 14:17:34','search')
 ,(12,'2012-11-29 14:17:34','2012-11-29 14:17:34','attributes')
 ,(13,'2012-11-29 14:17:34','2012-11-29 14:17:34','sets')
 ,(14,'2012-11-29 14:17:34','2012-11-29 14:17:34','add_set')
 ,(15,'2012-11-29 14:17:34','2012-11-29 14:17:34','users')
 ,(16,'2012-11-29 14:17:34','2012-11-29 14:17:34','search')
 ,(17,'2012-11-29 14:17:34','2012-11-29 14:17:34','groups')
 ,(18,'2012-11-29 14:17:34','2012-11-29 14:17:34','attributes')
 ,(19,'2012-11-29 14:17:34','2012-11-29 14:17:34','add')
 ,(20,'2012-11-29 14:17:34','2012-11-29 14:17:34','add_group')
 ,(21,'2012-11-29 14:17:34','2012-11-29 14:17:34','group_sets')
 ,(22,'2012-11-29 14:17:34','2012-11-29 14:17:34','reports')
 ,(23,'2012-11-29 14:17:34','2012-11-29 14:17:34','statistics')
 ,(24,'2012-11-29 14:17:34','2012-11-29 14:17:34','forms')
 ,(25,'2012-11-29 14:17:34','2012-11-29 14:17:34','surveys')
 ,(26,'2012-11-29 14:17:34','2012-11-29 14:17:34','logs')
 ,(27,'2012-11-29 14:17:34','2012-11-29 14:17:34','pages')
 ,(28,'2012-11-29 14:17:34','2012-11-29 14:17:34','themes')
 ,(29,'2012-11-29 14:17:34','2012-11-29 14:17:34','add')
 ,(30,'2012-11-29 14:17:34','2012-11-29 14:17:34','inspect')
 ,(31,'2012-11-29 14:17:34','2012-11-29 14:17:34','customize')
 ,(32,'2012-11-29 14:17:34','2012-11-29 14:17:34','types')
 ,(33,'2012-11-29 14:17:34','2012-11-29 14:17:34','add')
 ,(34,'2012-11-29 14:17:34','2012-11-29 14:17:34','attributes')
 ,(35,'2012-11-29 14:17:35','2012-11-29 14:17:35','single')
 ,(36,'2012-11-29 14:17:35','2012-11-29 14:17:35','workflow')
 ,(37,'2012-11-29 14:17:35','2012-11-29 14:17:35','list')
 ,(38,'2012-11-29 14:17:35','2012-11-29 14:17:35','me')
 ,(39,'2012-11-29 14:17:35','2012-11-29 14:17:35','blocks')
 ,(40,'2012-11-29 14:17:35','2012-11-29 14:17:35','stacks')
 ,(41,'2012-11-29 14:17:35','2012-11-29 14:17:35','permissions')
 ,(42,'2012-11-29 14:17:35','2012-11-29 14:17:35','list')
 ,(43,'2012-11-29 14:17:35','2012-11-29 14:17:35','types')
 ,(44,'2012-11-29 14:17:35','2012-11-29 14:17:35','extend')
 ,(45,'2012-11-29 14:17:35','2012-11-29 14:17:35','news')
 ,(46,'2012-11-29 14:17:35','2012-11-29 14:17:35','install')
 ,(47,'2012-11-29 14:17:35','2012-11-29 14:17:35','update')
 ,(48,'2012-11-29 14:17:35','2012-11-29 14:17:35','connect')
 ,(49,'2012-11-29 14:17:35','2012-11-29 14:17:35','themes')
 ,(50,'2012-11-29 14:17:35','2012-11-29 14:17:35','add-ons')
 ,(51,'2012-11-29 14:17:35','2012-11-29 14:17:35','system')
 ,(52,'2012-11-29 14:17:35','2012-11-29 14:17:35','basics')
 ,(53,'2012-11-29 14:17:35','2012-11-29 14:17:35','site_name')
 ,(54,'2012-11-29 14:17:35','2012-11-29 14:17:35','icons')
 ,(55,'2012-11-29 14:17:35','2012-11-29 14:17:35','editor')
 ,(56,'2012-11-29 14:17:35','2012-11-29 14:17:35','multilingual')
 ,(57,'2012-11-29 14:17:35','2012-11-29 14:17:35','timezone')
 ,(58,'2012-11-29 14:17:35','2012-11-29 14:17:35','interface')
 ,(59,'2012-11-29 14:17:36','2012-11-29 14:17:36','seo')
 ,(60,'2012-11-29 14:17:36','2012-11-29 14:17:36','urls')
 ,(61,'2012-11-29 14:17:36','2012-11-29 14:17:36','bulk_seo_tool')
 ,(62,'2012-11-29 14:17:36','2012-11-29 14:17:36','tracking_codes')
 ,(63,'2012-11-29 14:17:36','2012-11-29 14:17:36','statistics')
 ,(64,'2012-11-29 14:17:36','2012-11-29 14:17:36','search_index')
 ,(65,'2012-11-29 14:17:36','2012-11-29 14:17:36','optimization')
 ,(66,'2012-11-29 14:17:36','2012-11-29 14:17:36','cache')
 ,(67,'2012-11-29 14:17:36','2012-11-29 14:17:36','clear_cache')
 ,(68,'2012-11-29 14:17:36','2012-11-29 14:17:36','jobs')
 ,(69,'2012-11-29 14:17:36','2012-11-29 14:17:36','permissions')
 ,(70,'2012-11-29 14:17:36','2012-11-29 14:17:36','site')
 ,(71,'2012-11-29 14:17:36','2012-11-29 14:17:36','files')
 ,(72,'2012-11-29 14:17:36','2012-11-29 14:17:36','file_types')
 ,(73,'2012-11-29 14:17:36','2012-11-29 14:17:36','tasks')
 ,(74,'2012-11-29 14:17:36','2012-11-29 14:17:36','users')
 ,(75,'2012-11-29 14:17:36','2012-11-29 14:17:36','advanced')
 ,(76,'2012-11-29 14:17:36','2012-11-29 14:17:36','ip_blacklist')
 ,(77,'2012-11-29 14:17:36','2012-11-29 14:17:36','captcha')
 ,(78,'2012-11-29 14:17:36','2012-11-29 14:17:36','antispam')
 ,(79,'2012-11-29 14:17:36','2012-11-29 14:17:36','maintenance_mode')
 ,(80,'2012-11-29 14:17:36','2012-11-29 14:17:36','registration')
 ,(81,'2012-11-29 14:17:36','2012-11-29 14:17:37','postlogin')
 ,(82,'2012-11-29 14:17:37','2012-11-29 14:17:37','profiles')
 ,(83,'2012-11-29 14:17:37','2012-11-29 14:17:37','public_registration')
 ,(84,'2012-11-29 14:17:37','2012-11-29 14:17:37','mail')
 ,(85,'2012-11-29 14:17:37','2012-11-29 14:17:37','method')
 ,(86,'2012-11-29 14:17:37','2012-11-29 14:17:37','importers')
 ,(87,'2012-11-29 14:17:37','2012-11-29 14:17:37','attributes')
 ,(88,'2012-11-29 14:17:37','2012-11-29 14:17:37','sets')
 ,(89,'2012-11-29 14:17:37','2012-11-29 14:17:37','types')
 ,(90,'2012-11-29 14:17:37','2012-11-29 14:17:37','environment')
 ,(91,'2012-11-29 14:17:37','2012-11-29 14:17:37','info')
 ,(92,'2012-11-29 14:17:37','2012-11-29 14:17:37','debug')
 ,(93,'2012-11-29 14:17:37','2012-11-29 14:17:37','logging')
 ,(94,'2012-11-29 14:17:37','2012-11-29 14:17:37','file_storage_locations')
 ,(95,'2012-11-29 14:17:37','2012-11-29 14:17:37','proxy')
 ,(96,'2012-11-29 14:17:37','2012-11-29 14:17:37','backup_restore')
 ,(97,'2012-11-29 14:17:37','2012-11-29 14:17:37','backup')
 ,(98,'2012-11-29 14:17:37','2012-11-29 14:17:37','update')
 ,(99,'2012-11-29 14:17:37','2012-11-29 14:17:37','database')
 ,(100,'2012-11-29 14:17:37','2012-11-29 14:17:37','composer')
 ,(101,'2012-11-29 14:17:37','2012-11-29 14:17:37',NULL)
 ,(102,'2012-11-29 14:17:37','2012-11-29 14:17:37',NULL)
 ,(103,'2012-11-29 14:17:37','2012-11-29 14:17:37',NULL)
 ,(104,'2012-11-29 14:17:37','2012-11-29 14:17:37','home')
 ,(105,'2012-11-29 14:17:37','2012-11-29 14:17:37','welcome')
 ,(106,'2012-11-29 14:17:40','2012-11-29 14:17:40','!drafts')
 ,(107,'2012-11-29 14:17:40','2012-11-29 14:17:40','!trash')
 ,(108,'2012-11-29 14:17:40','2012-11-29 14:17:40','!stacks')
 ,(109,'2012-11-29 14:17:40','2012-11-29 14:17:41','login')
 ,(110,'2012-11-29 14:17:41','2012-11-29 14:17:41','register')
 ,(111,'2012-11-29 14:17:41','2012-11-29 14:17:41','profile')
 ,(112,'2012-11-29 14:17:41','2012-11-29 14:17:41','edit')
 ,(113,'2012-11-29 14:17:41','2012-11-29 14:17:41','avatar')
 ,(114,'2012-11-29 14:17:41','2012-11-29 14:17:41','messages')
 ,(115,'2012-11-29 14:17:41','2012-11-29 14:17:41','friends')
 ,(116,'2012-11-29 14:17:41','2012-11-29 14:17:41','page_not_found')
 ,(117,'2012-11-29 14:17:41','2012-11-29 14:17:41','page_forbidden')
 ,(118,'2012-11-29 14:17:41','2012-11-29 14:17:41','download_file')
 ,(119,'2012-11-29 14:17:41','2012-11-29 14:17:41','members')
 ,(120,'2012-11-29 14:17:42','2012-11-30 12:48:01',NULL)
 ,(125,'2012-11-30 12:47:20','2012-12-04 09:13:09',NULL)
 ,(122,'2012-11-29 15:06:56','2012-11-29 15:06:56','menu')
 ,(123,'2012-11-30 10:34:56','2012-11-30 10:34:57','test')
 ,(124,'2012-11-30 11:41:18','2012-11-30 11:41:18','bootstrap-header-nav')
 ,(126,'2012-11-30 12:52:09','2012-11-30 12:52:09',NULL)
 ,(127,'2012-11-30 12:52:34','2012-12-21 13:48:51','projekt')
 ,(128,'2012-11-30 13:46:48','2012-12-04 09:01:24','strategi-och-krav')
 ,(129,'2012-12-03 12:54:36','2012-12-03 12:55:19','ticker')
 ,(130,'2012-12-03 13:00:07','2012-12-03 13:04:54','footer')
 ,(131,'2012-12-04 08:58:34','2012-12-04 09:11:15','')
 ,(132,'2012-12-04 08:59:27','2012-12-04 09:01:37','hm')
 ,(133,'2012-12-04 08:59:53','2012-12-04 09:01:27',NULL)
 ,(134,'2012-12-04 08:59:59','2012-12-04 09:01:34',NULL)
 ,(135,'2012-12-04 09:00:06','2012-12-04 09:01:41',NULL)
 ,(136,'2012-12-04 09:12:02','2012-12-19 13:59:42','seb')
 ,(137,'2012-12-04 09:14:07','2012-12-10 10:00:18','scania')
 ,(138,'2012-12-04 09:14:38','2012-12-19 13:48:58','avanza')
 ,(139,'2012-12-13 12:22:17','2012-12-13 12:30:56','avanza')
 ,(140,'2012-12-13 12:23:14','2012-12-13 12:31:05','projekt')
 ,(141,'2012-12-13 12:24:00','2012-12-13 12:31:00','avanza')
 ,(142,'2012-12-13 12:31:30','2012-12-13 14:00:00','test')
 ,(143,'2012-12-13 12:31:58','2012-12-13 14:00:04','testarlitemer')
 ,(144,'2012-12-13 13:11:56','2012-12-13 13:59:53','')
 ,(145,'2012-12-13 13:13:39','2012-12-13 13:59:57','')
 ,(146,'2012-12-13 13:14:11','2012-12-13 14:00:07','testtset')
 ,(147,'2012-12-13 13:18:34','2012-12-13 14:00:10','asdasd')
 ,(148,'2012-12-13 17:28:46','2012-12-13 17:28:46',NULL)
 ,(149,'2012-12-13 17:30:47','2012-12-14 12:45:53','scrum-master')
 ,(150,'2012-12-17 14:10:24','2012-12-17 14:10:56','medarbetare')
 ,(151,'2012-12-17 14:18:33','2012-12-17 14:18:33',NULL)
 ,(152,'2012-12-17 14:22:03','2012-12-17 14:24:25','marcus-kremel')
 ,(153,'2012-12-17 17:09:42','2012-12-17 17:09:42',NULL)
 ,(154,'2012-12-17 17:09:59','2012-12-18 14:23:05','kompetenser')
 ,(155,'2012-12-19 14:45:36','2012-12-19 14:45:36','hm')
 ,(156,'2012-12-19 14:47:05','2012-12-19 14:47:06','testest')
 ,(157,'2012-12-20 14:09:00','2012-12-20 14:09:00',NULL)
 ,(158,'2012-12-20 14:10:29','2012-12-20 14:10:29',NULL)
 ,(159,'2012-12-20 14:11:01','2012-12-20 14:16:32','aktuellt')
 ,(160,'2012-12-20 14:11:46','2012-12-21 12:27:13','internet-things')
 ,(161,'2012-12-20 14:12:13','2012-12-20 14:50:41','hemnets-nya-sida-nominerad')
 ,(162,'2012-12-20 14:12:45','2012-12-20 14:50:49','beamon-gillar-mountain-lion')
 ,(163,'2012-12-20 14:13:05','2012-12-20 14:50:58','arets-konferans-till-ibiza')
 ,(164,'2012-12-21 10:37:21','2012-12-21 10:37:26','namnet')
 ,(165,'2012-12-21 13:53:05','2012-12-21 13:53:37','test-test-teste');

DROP TABLE IF EXISTS Config;

CREATE TABLE IF NOT EXISTS `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO Config VALUES('ACCESS_ENTITY_UPDATED','2012-12-11 14:20:38','1355235638',0,0)
 ,('FULL_PAGE_CACHE_LIFETIME','2012-11-30 11:40:12',NULL,0,0)
 ,('FULL_PAGE_CACHE_LIFETIME_CUSTOM','2012-11-30 11:40:12',NULL,0,0)
 ,('DO_PAGE_REINDEX_CHECK','2012-12-21 13:53:42','0',0,0)
 ,('QUICK_NAV_BOOKMARKS','2012-11-30 15:36:54','O:21:\"ConcreteDashboardMenu\":1:{s:8:\"\0*\0items\";a:10:{i:0;s:25:\"/dashboard/composer/write\";i:1;s:26:\"/dashboard/composer/drafts\";i:2;s:23:\"/dashboard/sitemap/full\";i:3;s:25:\"/dashboard/sitemap/search\";i:4;s:23:\"/dashboard/files/search\";i:5;s:21:\"/dashboard/files/sets\";i:6;s:29:\"/dashboard/reports/statistics\";i:7;s:24:\"/dashboard/reports/forms\";i:8;s:22:\"/dashboard/pages/types\";i:9;s:27:\"/dashboard/pages/attributes\";}}',1,0)
 ,('CONTENTS_TXT_EDITOR_MODE','2012-12-19 15:09:23','CUSTOM',0,0)
 ,('CONTENTS_TXT_EDITOR_WIDTH','2012-12-19 15:09:23','580',0,0)
 ,('CONTENTS_TXT_EDITOR_HEIGHT','2012-12-19 15:09:23','380',0,0)
 ,('CONTENTS_TXT_EDITOR_CUSTOM_CODE','2012-12-19 15:09:23','theme : \"concrete\", \r\nplugins: \"inlinepopups,spellchecker,safari,advlink\",\r\neditor_selector : \"ccm-advanced-editor\",\r\nspellchecker_languages : \"+English=en\",	\r\ntheme_concrete_buttons1 : \"undo,redo,pastetext,pasteword,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect\",\r\ntheme_concrete_buttons2 : \"formatselect,bullist,numlist,|,outdent,indent,|,hr,charmap,|,forecolor,backcolor,|,link,unlink,anchor\",\r\ntheme_concrete_buttons3 : \"image,cleanup,code\",\r\ntheme_concrete_toolbar_align : \"left\",\r\ntheme_concrete_font_sizes : \"1,2,3,4,5,6,7\",\r\ntheme_concrete_styles: \"GrönLänk=green\",\r\nspellchecker_languages : \"+English=en\"\r\n\r\n/*\r\n// Use the advanced theme for more than two rows of content\r\nplugins: \"inlinepopups,spellchecker,safari,advlink,table,advhr,xhtmlxtras,emotions,insertdatetime,paste,visualchars,nonbreaking,pagebreak,style\",\r\neditor_selector : \"ccm-advanced-editor\",\r\ntheme : \"advanced\",\r\ntheme_advanced_buttons1 : \"cut,copy,paste,pastetext,pasteword,|,undo,redo,|,styleselect,formatselect,fontsizeselect,fontselect\",\r\ntheme_advanced_buttons2 : \"bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,bullist,numlist,|,outdent,indent,blockquote,|,link,unlink,anchor,|,forecolor,backcolor,|,image,charmap,emotions\",\r\ntheme_advanced_fonts : \"\",\r\n// etc.\r\n*/',0,0)
 ,('SITE_DEBUG_LEVEL','2012-11-29 14:17:41','1',0,0)
 ,('ENABLE_LOG_EMAILS','2012-11-29 14:17:41','1',0,0)
 ,('ENABLE_LOG_ERRORS','2012-11-29 14:17:41','1',0,0)
 ,('ENABLE_CACHE','2012-11-30 11:40:12','0',0,0)
 ,('FULL_PAGE_CACHE_GLOBAL','2012-11-30 11:40:12','0',0,0)
 ,('ENABLE_MARKETPLACE_SUPPORT','2012-11-29 14:17:41','1',0,0)
 ,('ANTISPAM_LOG_SPAM','2012-11-29 14:17:41','1',0,0)
 ,('ENABLE_OVERRIDE_CACHE','2012-11-30 11:40:12','0',0,0)
 ,('SITE','2012-11-29 14:17:42','Beamon',0,0)
 ,('SITE_APP_VERSION','2012-11-29 14:17:42','5.6.0.2',0,0)
 ,('SITE_INSTALLED_APP_VERSION','2012-11-29 14:17:42','5.6.0.2',0,0)
 ,('NEWSFLOW_LAST_VIEWED','2012-12-21 16:14:15','1356102855',1,0)
 ,('APP_VERSION_LATEST','2012-12-21 15:14:15','5.6.0.2',0,0)
 ,('SEEN_INTRODUCTION','2012-11-29 14:17:56','1',0,0);

DROP TABLE IF EXISTS FileSetFiles;

CREATE TABLE IF NOT EXISTS `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO FileSetFiles VALUES(3,6,1,'2012-12-13 18:27:58',0);

DROP TABLE IF EXISTS FileSets;

CREATE TABLE IF NOT EXISTS `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileVersions;

CREATE TABLE IF NOT EXISTS `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO FileVersions VALUES(1,1,'seb1.png','831355235638',1,124183,'seb1.png','','',1,'2012-12-11 14:20:38',1,1,'2012-12-11 14:20:38',1,1,0,'png',1)
 ,(2,1,'seb2.png','531355235639',1,274234,'seb2.png','','',1,'2012-12-11 14:20:39',1,1,'2012-12-11 14:20:39',1,1,0,'png',1)
 ,(3,1,'seb3.png','311355235640',1,369916,'seb3.png','','',1,'2012-12-11 14:20:40',1,1,'2012-12-11 14:20:40',1,1,0,'png',1)
 ,(6,1,'ptbtest.png','921355419674',1,7285,'ptbtest.png','','',1,'2012-12-13 17:27:54',1,1,'2012-12-13 17:27:54',1,1,0,'png',1)
 ,(7,1,'_DSC3588_2.jpg','841355754108',1,190746,'_DSC3588_2.jpg','','',1,'2012-12-17 14:21:48',1,1,'2012-12-17 14:21:48',1,1,0,'jpg',1)
 ,(8,1,'ux-webb.png','111355823140',1,2026,'ux-webb.png','','',1,'2012-12-18 09:32:20',1,1,'2012-12-18 09:32:20',1,1,0,'png',1)
 ,(9,1,'strategi.png','891355823141',1,1701,'strategi.png','','',1,'2012-12-18 09:32:21',1,1,'2012-12-18 09:32:21',1,1,0,'png',1)
 ,(10,1,'qa-test.png','971355823141',1,1893,'qa-test.png','','',1,'2012-12-18 09:32:21',1,1,'2012-12-18 09:32:21',1,1,0,'png',1)
 ,(11,1,'ledning.png','181355823142',1,2065,'ledning.png','','',1,'2012-12-18 09:32:22',1,1,'2012-12-18 09:32:22',1,1,0,'png',1)
 ,(12,1,'krav.png','951355823143',1,1829,'krav.png','','',1,'2012-12-18 09:32:23',1,1,'2012-12-18 09:32:23',1,1,0,'png',1)
 ,(13,1,'arkitektur-utveckling.png','401355823144',1,1311,'arkitektur-utveckling.png','','',1,'2012-12-18 09:32:24',1,1,'2012-12-18 09:32:24',1,1,0,'png',1);

DROP TABLE IF EXISTS Files;

CREATE TABLE IF NOT EXISTS `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO Files VALUES(1,'2012-12-11 14:20:38',1,0,136,0,NULL)
 ,(2,'2012-12-11 14:20:39',1,0,136,0,NULL)
 ,(3,'2012-12-11 14:20:40',1,0,136,0,NULL)
 ,(6,'2012-12-13 17:27:54',1,0,0,0,NULL)
 ,(7,'2012-12-17 14:21:48',1,0,7,0,NULL)
 ,(8,'2012-12-18 09:32:20',1,0,154,0,NULL)
 ,(9,'2012-12-18 09:32:21',1,0,154,0,NULL)
 ,(10,'2012-12-18 09:32:21',1,0,154,0,NULL)
 ,(11,'2012-12-18 09:32:22',1,0,154,0,NULL)
 ,(12,'2012-12-18 09:32:23',1,0,154,0,NULL)
 ,(13,'2012-12-18 09:32:24',1,0,154,0,NULL);

DROP TABLE IF EXISTS Groups;

CREATE TABLE IF NOT EXISTS `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO Groups VALUES(1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL)
 ,(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL)
 ,(3,'Administrators','',0,NULL,NULL,0,NULL);

DROP TABLE IF EXISTS LayoutPresets;

CREATE TABLE IF NOT EXISTS `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Layouts;

CREATE TABLE IF NOT EXISTS `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Logs;

CREATE TABLE IF NOT EXISTS `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Logs VALUES(1,'exceptions','2012-12-19 14:56:42','Exception Occurred: C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\libraries\\3rdparty\\adodb\\adodb-exceptions.inc.php:78 mysql error: [1054: Unknown column \'ak_display\' in \'where clause\'] in EXECUTE(&quot;select p1.cID, pt.ctHandle  from Pages p1 left join Pages p2 on (p1.cPointerID = p2.cID) left join PagePaths on (PagePaths.cID = p1.cID and PagePaths.ppIsCanonical = 1) left join PageSearchIndex psi on (psi.cID = if(p2.cID is null, p1.cID, p2.cID)) inner join CollectionVersions cv on (cv.cID = if(p2.cID is null, p1.cID, p2.cID) and cvID = (select cvID from CollectionVersions where cvIsApproved = 1 and cID = cv.cID)) left join PageTypes pt on pt.ctID = cv.ctID inner join Collections c on (c.cID = if(p2.cID is null, p1.cID, p2.cID)) left join CollectionSearchIndexAttributes on (CollectionSearchIndexAttributes.cID = if (p2.cID is null, p1.cID, p2.cID))  where 1=1 and p1.cParentID = \'127\' and cvIsApproved = \'1\' and (p1.cIsTemplate = 0 or p2.cIsTemplate = 0) and ((select count(cID) from PagePermissionAssignments ppa1 inner join PermissionAccessList pa1 on ppa1.paID = pa1.paID where ppa1.cID = if(p2.cID is null, p1.cInheritPermissionsFromCID, p2.cInheritPermissionsFromCID) and pa1.accessType = 10 and pa1.pdID in (0)\n			and pa1.peID in (2) and (if(pa1.peID = 4 and p1.uID &lt;&gt;0, false, true)) and (ppa1.pkID = 1 and cv.cvIsApproved = 1 or ppa1.pkID = 2)) &gt; 0\n			or (p1.cPointerExternalLink !=\'\' AND p1.cPointerExternalLink IS NOT NULL)) and ((select count(cID) from PagePermissionAssignments ppaExclude inner join PermissionAccessList paExclude on ppaExclude.paID = paExclude.paID where ppaExclude.cID = if(p2.cID is null, p1.cInheritPermissionsFromCID, p2.cInheritPermissionsFromCID) and accessType = -1 and pdID in (0)\n			and paExclude.peID in (2) and (if(paExclude.peID = 4 and p1.uID &lt;&gt;0, false, true)) and (ppaExclude.pkID = 1 and cv.cvIsApproved = 1 or ppaExclude.pkID = 2)) = 0) and ak_display = \'1\' and p1.cIsActive = \'1\' order by p1.cDisplayOrder asc &quot;)\n (1054)\n\n#0 C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\libraries\\3rdparty\\adodb\\adodb.inc.php(1037): adodb_throw(\'mysql\', \'EXECUTE\', 1054, \'Unknown column ...\', \'select p1.cID, ...\', false, Object(ADODB_mysql))\n#1 C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\libraries\\3rdparty\\adodb\\adodb.inc.php(1012): ADOConnection-&gt;_Execute(\'select p1.cID, ...\', false)\n#2 C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\libraries\\3rdparty\\adodb\\adodb.inc.php(1543): ADOConnection-&gt;Execute(\'select p1.cID, ...\', false)\n#3 C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\libraries\\3rdparty\\adodb\\adodb.inc.php(1380): ADOConnection-&gt;GetArray(\'select p1.cID, ...\', false)\n#4 C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\core\\libraries\\database_item_list.php(149): ADOConnection-&gt;GetAll(\'select p1.cID, ...\')\n#5 C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\core\\models\\page_list.php(410): Concrete5_Library_DatabaseItemList-&gt;get(0, 0)\n#6 C:\\Users\\Marcus\\Documents\\Beamon\\themes\\beamon\\elements\\mini_grid.php(28): Concrete5_Model_PageList-&gt;get()\n#7 C:\\Users\\Marcus\\Documents\\Beamon\\themes\\beamon\\default.php(34): MiniGrid-&gt;__construct(Object(Page), true, Array)\n#8 C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\core\\libraries\\view.php(907): include(\'C:\\Users\\Marcus...\')\n#9 C:\\Users\\Marcus\\Documents\\Beamon\\concrete\\dispatcher.php(241): Concrete5_Library_View-&gt;render(Object(Page))\n#10 C:\\Users\\Marcus\\Documents\\Beamon\\index.php(2): require(\'C:\\Users\\Marcus...\')\n#11 {main}\n',NULL,1);

DROP TABLE IF EXISTS Packages;

CREATE TABLE IF NOT EXISTS `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Packages VALUES(1,'Page Selector Attribute','page_selector_attribute','Attribute that allows the selection of pages.','2012-12-13 16:39:25',1,'1.1',NULL);

DROP TABLE IF EXISTS PagePaths;

CREATE TABLE IF NOT EXISTS `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

INSERT INTO PagePaths VALUES(1,2,'/dashboard','1')
 ,(2,3,'/dashboard/composer','1')
 ,(3,4,'/dashboard/composer/write','1')
 ,(4,5,'/dashboard/composer/drafts','1')
 ,(5,6,'/dashboard/sitemap','1')
 ,(6,7,'/dashboard/sitemap/full','1')
 ,(7,8,'/dashboard/sitemap/explore','1')
 ,(8,9,'/dashboard/sitemap/search','1')
 ,(9,10,'/dashboard/files','1')
 ,(10,11,'/dashboard/files/search','1')
 ,(11,12,'/dashboard/files/attributes','1')
 ,(12,13,'/dashboard/files/sets','1')
 ,(13,14,'/dashboard/files/add_set','1')
 ,(14,15,'/dashboard/users','1')
 ,(15,16,'/dashboard/users/search','1')
 ,(16,17,'/dashboard/users/groups','1')
 ,(17,18,'/dashboard/users/attributes','1')
 ,(18,19,'/dashboard/users/add','1')
 ,(19,20,'/dashboard/users/add_group','1')
 ,(20,21,'/dashboard/users/group_sets','1')
 ,(21,22,'/dashboard/reports','1')
 ,(22,23,'/dashboard/reports/statistics','1')
 ,(23,24,'/dashboard/reports/forms','1')
 ,(24,25,'/dashboard/reports/surveys','1')
 ,(25,26,'/dashboard/reports/logs','1')
 ,(26,27,'/dashboard/pages','1')
 ,(27,28,'/dashboard/pages/themes','1')
 ,(28,29,'/dashboard/pages/themes/add','1')
 ,(29,30,'/dashboard/pages/themes/inspect','1')
 ,(30,31,'/dashboard/pages/themes/customize','1')
 ,(31,32,'/dashboard/pages/types','1')
 ,(32,33,'/dashboard/pages/types/add','1')
 ,(33,34,'/dashboard/pages/attributes','1')
 ,(34,35,'/dashboard/pages/single','1')
 ,(35,36,'/dashboard/workflow','1')
 ,(36,37,'/dashboard/workflow/list','1')
 ,(37,38,'/dashboard/workflow/me','1')
 ,(38,39,'/dashboard/blocks','1')
 ,(39,40,'/dashboard/blocks/stacks','1')
 ,(40,41,'/dashboard/blocks/permissions','1')
 ,(41,42,'/dashboard/blocks/stacks/list','1')
 ,(42,43,'/dashboard/blocks/types','1')
 ,(43,44,'/dashboard/extend','1')
 ,(44,45,'/dashboard/news','1')
 ,(45,46,'/dashboard/extend/install','1')
 ,(46,47,'/dashboard/extend/update','1')
 ,(47,48,'/dashboard/extend/connect','1')
 ,(48,49,'/dashboard/extend/themes','1')
 ,(49,50,'/dashboard/extend/add-ons','1')
 ,(50,51,'/dashboard/system','1')
 ,(51,52,'/dashboard/system/basics','1')
 ,(52,53,'/dashboard/system/basics/site_name','1')
 ,(53,54,'/dashboard/system/basics/icons','1')
 ,(54,55,'/dashboard/system/basics/editor','1')
 ,(55,56,'/dashboard/system/basics/multilingual','1')
 ,(56,57,'/dashboard/system/basics/timezone','1')
 ,(57,58,'/dashboard/system/basics/interface','1')
 ,(58,59,'/dashboard/system/seo','1')
 ,(59,60,'/dashboard/system/seo/urls','1')
 ,(60,61,'/dashboard/system/seo/bulk_seo_tool','1')
 ,(61,62,'/dashboard/system/seo/tracking_codes','1')
 ,(62,63,'/dashboard/system/seo/statistics','1')
 ,(63,64,'/dashboard/system/seo/search_index','1')
 ,(64,65,'/dashboard/system/optimization','1')
 ,(65,66,'/dashboard/system/optimization/cache','1')
 ,(66,67,'/dashboard/system/optimization/clear_cache','1')
 ,(67,68,'/dashboard/system/optimization/jobs','1')
 ,(68,69,'/dashboard/system/permissions','1')
 ,(69,70,'/dashboard/system/permissions/site','1')
 ,(70,71,'/dashboard/system/permissions/files','1')
 ,(71,72,'/dashboard/system/permissions/file_types','1')
 ,(72,73,'/dashboard/system/permissions/tasks','1')
 ,(73,74,'/dashboard/system/permissions/users','1')
 ,(74,75,'/dashboard/system/permissions/advanced','1')
 ,(75,76,'/dashboard/system/permissions/ip_blacklist','1')
 ,(76,77,'/dashboard/system/permissions/captcha','1')
 ,(77,78,'/dashboard/system/permissions/antispam','1')
 ,(78,79,'/dashboard/system/permissions/maintenance_mode','1')
 ,(79,80,'/dashboard/system/registration','1')
 ,(80,81,'/dashboard/system/registration/postlogin','1')
 ,(81,82,'/dashboard/system/registration/profiles','1')
 ,(82,83,'/dashboard/system/registration/public_registration','1')
 ,(83,84,'/dashboard/system/mail','1')
 ,(84,85,'/dashboard/system/mail/method','1')
 ,(85,86,'/dashboard/system/mail/importers','1')
 ,(86,87,'/dashboard/system/attributes','1')
 ,(87,88,'/dashboard/system/attributes/sets','1')
 ,(88,89,'/dashboard/system/attributes/types','1')
 ,(89,90,'/dashboard/system/environment','1')
 ,(90,91,'/dashboard/system/environment/info','1')
 ,(91,92,'/dashboard/system/environment/debug','1')
 ,(92,93,'/dashboard/system/environment/logging','1')
 ,(93,94,'/dashboard/system/environment/file_storage_locations','1')
 ,(94,95,'/dashboard/system/environment/proxy','1')
 ,(95,96,'/dashboard/system/backup_restore','1')
 ,(96,97,'/dashboard/system/backup_restore/backup','1')
 ,(97,98,'/dashboard/system/backup_restore/update','1')
 ,(98,99,'/dashboard/system/backup_restore/database','1')
 ,(99,100,'/dashboard/pages/types/composer','1')
 ,(100,104,'/dashboard/home','1')
 ,(101,105,'/dashboard/welcome','1')
 ,(102,106,'/!drafts','1')
 ,(103,107,'/!trash','1')
 ,(104,108,'/!stacks','1')
 ,(105,109,'/login','1')
 ,(106,110,'/register','1')
 ,(107,111,'/profile','1')
 ,(108,112,'/profile/edit','1')
 ,(109,113,'/profile/avatar','1')
 ,(110,114,'/profile/messages','1')
 ,(111,115,'/profile/friends','1')
 ,(112,116,'/page_not_found','1')
 ,(113,117,'/page_forbidden','1')
 ,(114,118,'/download_file','1')
 ,(115,119,'/members','1')
 ,(116,122,'/!stacks/menu','1')
 ,(117,123,'/test','1')
 ,(118,124,'/!stacks/bootstrap-header-nav','1')
 ,(205,127,'/projekt','1')
 ,(134,128,'/!trash/strategi-och-krav','1')
 ,(122,129,'/!stacks/ticker','1')
 ,(125,130,'/!stacks/footer','1')
 ,(140,131,'/!trash/testar-lite-projekt','1')
 ,(127,131,'/projekt/131','0')
 ,(138,132,'/!trash/hm','1')
 ,(135,133,'/!trash/strategi-och-krav-2','1')
 ,(137,134,'/!trash/testar-lite-projekt-2','1')
 ,(139,135,'/!trash/hm-2','1')
 ,(206,136,'/projekt/seb','1')
 ,(208,137,'/projekt/scania','1')
 ,(207,138,'/projekt/avanza','1')
 ,(159,140,'/!trash/projekt','1')
 ,(162,142,'/!trash/test','1')
 ,(163,147,'/!trash/asdasd','1')
 ,(209,149,'/projekt/scrum-master','1')
 ,(175,150,'/medarbetare','1')
 ,(177,152,'/medarbetare/marcus-kremel','1')
 ,(183,154,'/kompetenser','1')
 ,(210,155,'/projekt/hm','1')
 ,(211,156,'/projekt/testest','1')
 ,(193,159,'/aktuellt','1')
 ,(204,160,'/aktuellt/internet-things','1')
 ,(199,161,'/aktuellt/hemnets-nya-sida-nominerad','1')
 ,(200,162,'/aktuellt/beamon-gillar-mountain-lion','1')
 ,(201,163,'/aktuellt/arets-konferans-till-ibiza','1')
 ,(203,164,'/aktuellt/namnet','1')
 ,(212,165,'/medarbetare/test-test-teste','1');

DROP TABLE IF EXISTS PageSearchIndex;

CREATE TABLE IF NOT EXISTS `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO PageSearchIndex VALUES(3,'','Composer','Write for your site.','/dashboard/composer','2012-11-29 14:17:33','2012-11-29 14:17:37',NULL,0)
 ,(4,'','Write','','/dashboard/composer/write','2012-11-29 14:17:33','2012-11-29 14:17:37',NULL,0)
 ,(5,'','Drafts','','/dashboard/composer/drafts','2012-11-29 14:17:33','2012-11-29 14:17:38',NULL,0)
 ,(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2012-11-29 14:17:33','2012-11-29 14:17:38',NULL,0)
 ,(7,'','Full Sitemap','','/dashboard/sitemap/full','2012-11-29 14:17:33','2012-11-29 14:17:38',NULL,0)
 ,(8,'','Flat View','','/dashboard/sitemap/explore','2012-11-29 14:17:33','2012-11-29 14:17:38',NULL,0)
 ,(9,'','Page Search','','/dashboard/sitemap/search','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(11,'','File Manager','','/dashboard/files/search','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(12,'','Attributes','','/dashboard/files/attributes','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(13,'','File Sets','','/dashboard/files/sets','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(14,'','Add File Set','','/dashboard/files/add_set','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(16,'','Search Users','','/dashboard/users/search','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(17,'','User Groups','','/dashboard/users/groups','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(18,'','Attributes','','/dashboard/users/attributes','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(19,'','Add User','','/dashboard/users/add','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(20,'','Add Group','','/dashboard/users/add_group','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(21,'','Group Sets','','/dashboard/users/group_sets','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(22,'','Reports','Get data from forms and logs.','/dashboard/reports','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(23,'','Statistics','View your site activity.','/dashboard/reports/statistics','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(25,'','Surveys','','/dashboard/reports/surveys','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(26,'','Logs','','/dashboard/reports/logs','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(29,'','Add','','/dashboard/pages/themes/add','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(30,'','Inspect','','/dashboard/pages/themes/inspect','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(31,'','Customize','','/dashboard/pages/themes/customize','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(32,'','Page Types','What goes in your site.','/dashboard/pages/types','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(34,'','Attributes','','/dashboard/pages/attributes','2012-11-29 14:17:34','2012-11-29 14:17:38',NULL,0)
 ,(35,'','Single Pages','','/dashboard/pages/single','2012-11-29 14:17:35','2012-11-29 14:17:38',NULL,0)
 ,(36,'','Workflow','','/dashboard/workflow','2012-11-29 14:17:35','2012-11-29 14:17:38',NULL,0)
 ,(37,'','Workflow List','','/dashboard/workflow/list','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(38,'','Waiting for Me','','/dashboard/workflow/me','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(40,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(41,'','Block & Stack Permissions','Control who can add blocks and stacks on your site.','/dashboard/blocks/permissions','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(42,'','Stack List','','/dashboard/blocks/stacks/list','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(43,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(44,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(45,'','Dashboard','','/dashboard/news','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(46,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(47,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(48,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(49,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(50,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(51,'','System & Settings','Secure and setup your site.','/dashboard/system','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(53,'','Site Name','','/dashboard/system/basics/site_name','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(54,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(55,'','Rich Text Editor','','/dashboard/system/basics/editor','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(56,'','Languages','','/dashboard/system/basics/multilingual','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(57,'','Time Zone','','/dashboard/system/basics/timezone','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(58,'','Interface Preferences','','/dashboard/system/basics/interface','2012-11-29 14:17:35','2012-11-29 14:17:39',NULL,0)
 ,(60,'','Pretty URLs','','/dashboard/system/seo/urls','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(61,'','Bulk SEO Updater','','/dashboard/system/seo/bulk_seo_tool','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(62,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(63,'','Statistics','','/dashboard/system/seo/statistics','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(64,'','Search Index','','/dashboard/system/seo/search_index','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(66,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(67,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(68,'','Automated Jobs','','/dashboard/system/optimization/jobs','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(70,'','Site Access','','/dashboard/system/permissions/site','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(71,'','File Manager Permissions','','/dashboard/system/permissions/files','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(72,'','Allowed File Types','','/dashboard/system/permissions/file_types','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(73,'','Task Permissions','','/dashboard/system/permissions/tasks','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(76,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(77,'','Captcha Setup','','/dashboard/system/permissions/captcha','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(78,'','Spam Control','','/dashboard/system/permissions/antispam','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(79,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(81,'','Login Destination','','/dashboard/system/registration/postlogin','2012-11-29 14:17:36','2012-11-29 14:17:39',NULL,0)
 ,(82,'','Public Profiles','','/dashboard/system/registration/profiles','2012-11-29 14:17:37','2012-11-29 14:17:39',NULL,0)
 ,(83,'','Public Registration','','/dashboard/system/registration/public_registration','2012-11-29 14:17:37','2012-11-29 14:17:39',NULL,0)
 ,(84,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2012-11-29 14:17:37','2012-11-29 14:17:39',NULL,0)
 ,(85,'','SMTP Method','','/dashboard/system/mail/method','2012-11-29 14:17:37','2012-11-29 14:17:39',NULL,0)
 ,(86,'','Email Importers','','/dashboard/system/mail/importers','2012-11-29 14:17:37','2012-11-29 14:17:39',NULL,0)
 ,(87,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2012-11-29 14:17:37','2012-11-29 14:17:39',NULL,0)
 ,(88,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2012-11-29 14:17:37','2012-11-29 14:17:39',NULL,0)
 ,(89,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(90,'','Environment','Advanced settings for web developers.','/dashboard/system/environment','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(91,'','Environment Information','','/dashboard/system/environment/info','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(92,'','Debug Settings','','/dashboard/system/environment/debug','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(93,'','Logging Settings','','/dashboard/system/environment/logging','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(94,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(95,'','Proxy Server','','/dashboard/system/environment/proxy','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(96,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup_restore','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(98,'','Update concrete5','','/dashboard/system/backup_restore/update','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(99,'','Database XML','','/dashboard/system/backup_restore/database','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(105,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(104,'','Customize Dashboard Home','','/dashboard/home','2012-11-29 14:17:37','2012-11-29 14:17:40',NULL,0)
 ,(1,' Vi är ett konsultbolag med ett stort hjärta som brinner för att skapa lösningar som både människa, maskin och affär älskar. Vad kan vi hjälpa dig med?  Våra Projekt\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\n Våra Projekt  Våra medarbetare\r\nSe alla medarbetare  ','Home','',NULL,'2012-11-29 14:17:00','2012-12-19 15:17:17',NULL,0)
 ,(123,'','Test','asdasdasdasdsada','/test','2012-11-30 10:34:00','2012-11-30 10:35:11',NULL,0)
 ,(127,'Våra Project\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  ','Projekt','','/projekt','2012-11-30 12:52:00','2012-12-21 13:48:55',NULL,0)
 ,(128,'','Strategi-och-krav','descriptioooon','/projekt/strategi-och-krav','2012-11-30 13:43:00','2012-11-30 13:46:55',NULL,0)
 ,(129,' Just nu söker vi: Systemutvecklare, Interaktionsdesigners &amp; ScrumMaster  ','Ticker',NULL,'/!stacks/ticker','2012-12-03 12:54:36','2012-12-03 12:55:19',NULL,0)
 ,(130,'','footer',NULL,'/!stacks/footer','2012-12-03 13:00:07','2012-12-03 13:04:54',NULL,0)
 ,(131,' Så gjorde vi det enklare för Sveriges småföretagare   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  ','testar lite projekt','blablabla','/!trash/testar-lite-projekt','2012-12-04 08:58:00','2012-12-04 09:11:18',NULL,0)
 ,(132,'','HM','asdasdasd','/projekt/hm','2012-12-04 08:59:00','2012-12-04 09:00:13',NULL,0)
 ,(136,' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   SEBSEBSEBSEB \r\n    ','SEB','\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','/projekt/seb','2012-12-04 09:11:00','2012-12-19 13:59:46',NULL,0)
 ,(125,' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Så gjorde vi det enklare för Sveriges småföretagare  ','','',NULL,'2012-11-30 12:47:00','2012-12-04 09:13:12',NULL,0)
 ,(137,' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Så gjorde vi det enklare för Sveriges småföretagare  ','Scania','','/projekt/scania','2012-12-04 09:14:00','2012-12-10 10:00:35',NULL,0)
 ,(138,' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Så gjorde vi det enklare för Sveriges småföretagare  ','Avanza','','/projekt/avanza','2012-12-04 09:14:00','2012-12-19 13:49:03',NULL,0)
 ,(140,'','Projekt','','/projekt1','2012-12-13 12:23:00','2012-12-13 12:23:21',NULL,0)
 ,(142,' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Så gjorde vi det enklare för Sveriges småföretagare  ','Test','testin','/projekt/test','2012-12-13 12:31:00','2012-12-13 12:31:40',NULL,0)
 ,(147,' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Så gjorde vi det enklare för Sveriges småföretagare ','asdasd','','/projekt/asdasd','2012-12-13 13:18:00','2012-12-13 13:21:24',NULL,0)
 ,(149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0)
 ,(150,'','Medarbetare','','/medarbetare','2012-12-17 14:10:00','2012-12-17 14:11:03',NULL,0)
 ,(152,' asdasdasdasdasd  ','Marcus Kremel','','/medarbetare/marcus-kremel','2012-12-17 14:20:00','2012-12-17 14:24:27',NULL,0)
 ,(154,'Kompetenser\r\n Hos Beamon hittar du konsulter som är experter inom ledning, arkitektur, analys user experience, utveckling och kvalitet. Hos oss hittar du IT-branschens stjärnor, där värderingar som öppenhet, enkelhet, professionalism och resultat speglar vår vardag.  ','Kompetenser','','/kompetenser','2012-12-17 17:09:00','2012-12-18 14:23:08',NULL,0)
 ,(155,' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Så gjorde vi det enklare för Sveriges småföretagare  ','HM','','/projekt/hm','2012-12-19 14:45:00','2012-12-19 14:45:49',NULL,0)
 ,(156,' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Så gjorde vi det enklare för Sveriges småföretagare  ','testest','','/projekt/testest','2012-12-19 14:46:00','2012-12-19 14:47:12',NULL,0)
 ,(159,'','Aktuellt','','/aktuellt','2012-12-20 14:10:00','2012-12-20 14:16:38',NULL,0)
 ,(160,' hej  ','Internet of things','descccc\r\n','/aktuellt/internet-things','2012-12-20 14:11:00','2012-12-21 12:27:20',NULL,0)
 ,(161,'','Hemnets nya sida nominerad','','/aktuellt/hemnets-nya-sida-nominerad','2012-12-20 14:11:00','2012-12-20 14:51:01',NULL,0)
 ,(162,'','Beamon gillar mountain lion','','/aktuellt/beamon-gillar-mountain-lion','2012-12-20 14:12:00','2012-12-20 14:51:01',NULL,0)
 ,(163,'','Årets konferans till Ibiza','','/aktuellt/arets-konferans-till-ibiza','2012-12-20 14:12:00','2012-12-20 14:51:01',NULL,0)
 ,(164,'','Namnet','description blalbalbla\r\n','/aktuellt/namnet','2004-12-22 10:36:00','2012-12-21 10:37:29',NULL,0)
 ,(165,' Blaha blaha \r\n     fvbvcbcvbcvbdfgdfgdfgd  ','test test test','blalsgblsadfdsdfsdfsd fsdfsdf','/medarbetare/test-test-teste','2012-12-21 13:52:00','2012-12-21 13:53:42',NULL,0);

DROP TABLE IF EXISTS PageStatistics;

CREATE TABLE IF NOT EXISTS `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=5027 DEFAULT CHARSET=utf8;

INSERT INTO PageStatistics VALUES(1,1,'2012-11-29','2012-11-29 15:17:56',1)
 ,(2,105,'2012-11-29','2012-11-29 15:17:58',1)
 ,(3,2,'2012-11-29','2012-11-29 15:21:45',1)
 ,(4,28,'2012-11-29','2012-11-29 15:23:41',1)
 ,(5,28,'2012-11-29','2012-11-29 15:23:45',1)
 ,(6,28,'2012-11-29','2012-11-29 15:23:47',1)
 ,(7,28,'2012-11-29','2012-11-29 15:23:49',1)
 ,(8,2,'2012-11-29','2012-11-29 15:48:34',1)
 ,(9,28,'2012-11-29','2012-11-29 15:48:54',1)
 ,(10,28,'2012-11-29','2012-11-29 15:50:03',1)
 ,(11,28,'2012-11-29','2012-11-29 16:02:27',1)
 ,(12,28,'2012-11-29','2012-11-29 16:06:13',1)
 ,(13,30,'2012-11-29','2012-11-29 16:06:13',1)
 ,(14,30,'2012-11-29','2012-11-29 16:06:23',1)
 ,(15,30,'2012-11-29','2012-11-29 16:06:32',1)
 ,(16,1,'2012-11-29','2012-11-29 16:06:37',1)
 ,(17,2,'2012-11-29','2012-11-29 16:06:41',1)
 ,(18,28,'2012-11-29','2012-11-29 16:06:44',1)
 ,(19,28,'2012-11-29','2012-11-29 16:06:47',1)
 ,(20,28,'2012-11-29','2012-11-29 16:06:50',1)
 ,(21,1,'2012-11-29','2012-11-29 16:06:56',1)
 ,(22,1,'2012-11-29','2012-11-29 16:06:59',1)
 ,(23,1,'2012-11-29','2012-11-29 16:07:45',1)
 ,(24,1,'2012-11-29','2012-11-29 16:07:59',1)
 ,(25,1,'2012-11-29','2012-11-29 16:08:06',1)
 ,(26,1,'2012-11-29','2012-11-29 16:08:43',1)
 ,(27,1,'2012-11-29','2012-11-29 16:09:05',1)
 ,(28,1,'2012-11-29','2012-11-29 16:09:10',1)
 ,(29,1,'2012-11-29','2012-11-29 16:09:44',1)
 ,(30,1,'2012-11-29','2012-11-29 16:10:21',1)
 ,(31,1,'2012-11-29','2012-11-29 16:10:37',1)
 ,(32,1,'2012-11-29','2012-11-29 16:14:34',1)
 ,(33,1,'2012-11-29','2012-11-29 16:14:55',1)
 ,(34,1,'2012-11-29','2012-11-29 16:15:09',1)
 ,(35,1,'2012-11-29','2012-11-29 16:15:38',1)
 ,(36,1,'2012-11-29','2012-11-29 16:17:34',1)
 ,(37,1,'2012-11-29','2012-11-29 16:18:06',1)
 ,(38,1,'2012-11-29','2012-11-29 16:18:08',1)
 ,(39,1,'2012-11-29','2012-11-29 16:18:15',1)
 ,(40,1,'2012-11-29','2012-11-29 16:18:47',1)
 ,(41,1,'2012-11-29','2012-11-29 16:19:15',1)
 ,(42,1,'2012-11-29','2012-11-29 16:21:24',1)
 ,(43,1,'2012-11-29','2012-11-29 16:22:00',1)
 ,(44,1,'2012-11-29','2012-11-29 16:22:28',1)
 ,(45,1,'2012-11-29','2012-11-29 16:22:29',1)
 ,(46,1,'2012-11-29','2012-11-29 16:22:38',1)
 ,(47,1,'2012-11-29','2012-11-29 16:23:18',1)
 ,(48,1,'2012-11-29','2012-11-29 16:23:24',1)
 ,(49,1,'2012-11-29','2012-11-29 16:23:52',1)
 ,(50,1,'2012-11-29','2012-11-29 16:23:56',1)
 ,(51,1,'2012-11-29','2012-11-29 16:25:01',1)
 ,(52,1,'2012-11-29','2012-11-29 16:26:35',1)
 ,(53,1,'2012-11-29','2012-11-29 16:26:36',1)
 ,(54,1,'2012-11-29','2012-11-29 16:29:28',1)
 ,(55,1,'2012-11-29','2012-11-29 16:29:44',1)
 ,(56,1,'2012-11-29','2012-11-29 16:30:08',1)
 ,(57,1,'2012-11-29','2012-11-29 16:30:30',1)
 ,(58,1,'2012-11-29','2012-11-29 16:30:50',1)
 ,(59,1,'2012-11-29','2012-11-29 16:31:08',1)
 ,(60,1,'2012-11-29','2012-11-29 16:47:53',1)
 ,(61,1,'2012-11-29','2012-11-29 16:48:46',1)
 ,(62,1,'2012-11-29','2012-11-29 16:49:08',1)
 ,(63,1,'2012-11-29','2012-11-29 16:49:46',1)
 ,(64,1,'2012-11-29','2012-11-29 16:50:09',1)
 ,(65,1,'2012-11-29','2012-11-29 16:50:34',1)
 ,(66,1,'2012-11-29','2012-11-29 16:55:51',1)
 ,(67,1,'2012-11-29','2012-11-29 16:57:25',1)
 ,(68,1,'2012-11-29','2012-11-29 16:57:41',1)
 ,(69,1,'2012-11-30','2012-11-30 11:15:23',0)
 ,(70,1,'2012-11-30','2012-11-30 11:16:07',0)
 ,(71,1,'2012-11-30','2012-11-30 11:16:34',0)
 ,(72,1,'2012-11-30','2012-11-30 11:19:27',0)
 ,(73,1,'2012-11-30','2012-11-30 11:24:23',0)
 ,(74,109,'2012-11-30','2012-11-30 11:24:57',0)
 ,(75,2,'2012-11-30','2012-11-30 11:25:01',1)
 ,(76,51,'2012-11-30','2012-11-30 11:25:44',1)
 ,(77,2,'2012-11-30','2012-11-30 11:25:54',1)
 ,(78,7,'2012-11-30','2012-11-30 11:25:58',1)
 ,(79,7,'2012-11-30','2012-11-30 11:26:08',1)
 ,(80,6,'2012-11-30','2012-11-30 11:34:57',1)
 ,(81,7,'2012-11-30','2012-11-30 11:34:57',1)
 ,(82,1,'2012-11-30','2012-11-30 11:35:09',1)
 ,(83,1,'2012-11-30','2012-11-30 11:35:48',1)
 ,(84,1,'2012-11-30','2012-11-30 11:36:05',1)
 ,(85,1,'2012-11-30','2012-11-30 11:36:05',1)
 ,(86,1,'2012-11-30','2012-11-30 11:36:05',1)
 ,(87,1,'2012-11-30','2012-11-30 11:36:56',1)
 ,(88,1,'2012-11-30','2012-11-30 11:37:01',1)
 ,(89,1,'2012-11-30','2012-11-30 11:48:52',1)
 ,(90,1,'2012-11-30','2012-11-30 11:49:25',1)
 ,(91,1,'2012-11-30','2012-11-30 11:49:42',1)
 ,(92,1,'2012-11-30','2012-11-30 11:49:43',1)
 ,(93,1,'2012-11-30','2012-11-30 11:49:43',1)
 ,(94,1,'2012-11-30','2012-11-30 11:49:44',1)
 ,(95,1,'2012-11-30','2012-11-30 11:49:44',1)
 ,(96,1,'2012-11-30','2012-11-30 12:19:10',1)
 ,(97,1,'2012-11-30','2012-11-30 12:20:36',1)
 ,(98,1,'2012-11-30','2012-11-30 12:20:47',1)
 ,(99,1,'2012-11-30','2012-11-30 12:20:48',1)
 ,(100,1,'2012-11-30','2012-11-30 12:20:48',1)
 ,(101,1,'2012-11-30','2012-11-30 12:20:49',1)
 ,(102,1,'2012-11-30','2012-11-30 12:20:49',1)
 ,(103,1,'2012-11-30','2012-11-30 12:20:49',1)
 ,(104,1,'2012-11-30','2012-11-30 12:21:21',1)
 ,(105,1,'2012-11-30','2012-11-30 12:21:22',1)
 ,(106,1,'2012-11-30','2012-11-30 12:21:22',1)
 ,(107,1,'2012-11-30','2012-11-30 12:21:22',1)
 ,(108,1,'2012-11-30','2012-11-30 12:21:22',1)
 ,(109,1,'2012-11-30','2012-11-30 12:21:23',1)
 ,(110,1,'2012-11-30','2012-11-30 12:21:23',1)
 ,(111,1,'2012-11-30','2012-11-30 12:21:23',1)
 ,(112,1,'2012-11-30','2012-11-30 12:21:23',1)
 ,(113,1,'2012-11-30','2012-11-30 12:21:23',1)
 ,(114,1,'2012-11-30','2012-11-30 12:21:23',1)
 ,(115,1,'2012-11-30','2012-11-30 12:21:24',1)
 ,(116,1,'2012-11-30','2012-11-30 12:21:24',1)
 ,(117,1,'2012-11-30','2012-11-30 12:21:24',1)
 ,(118,1,'2012-11-30','2012-11-30 12:21:42',1)
 ,(119,1,'2012-11-30','2012-11-30 12:22:26',1)
 ,(120,1,'2012-11-30','2012-11-30 12:22:26',1)
 ,(121,1,'2012-11-30','2012-11-30 12:23:43',1)
 ,(122,1,'2012-11-30','2012-11-30 12:23:45',1)
 ,(123,1,'2012-11-30','2012-11-30 12:23:46',1)
 ,(124,1,'2012-11-30','2012-11-30 12:23:46',1)
 ,(125,1,'2012-11-30','2012-11-30 12:23:46',1)
 ,(126,1,'2012-11-30','2012-11-30 12:23:46',1)
 ,(127,1,'2012-11-30','2012-11-30 12:23:47',1)
 ,(128,1,'2012-11-30','2012-11-30 12:23:47',1)
 ,(129,1,'2012-11-30','2012-11-30 12:23:47',1)
 ,(130,1,'2012-11-30','2012-11-30 12:23:47',1)
 ,(131,1,'2012-11-30','2012-11-30 12:23:47',1)
 ,(132,1,'2012-11-30','2012-11-30 12:23:47',1)
 ,(133,1,'2012-11-30','2012-11-30 12:23:48',1)
 ,(134,1,'2012-11-30','2012-11-30 12:23:48',1)
 ,(135,1,'2012-11-30','2012-11-30 12:24:09',1)
 ,(136,1,'2012-11-30','2012-11-30 12:24:10',1)
 ,(137,1,'2012-11-30','2012-11-30 12:24:10',1)
 ,(138,1,'2012-11-30','2012-11-30 12:25:27',1)
 ,(139,1,'2012-11-30','2012-11-30 12:25:48',1)
 ,(140,1,'2012-11-30','2012-11-30 12:25:49',1)
 ,(141,1,'2012-11-30','2012-11-30 12:25:50',1)
 ,(142,1,'2012-11-30','2012-11-30 12:27:40',1)
 ,(143,1,'2012-11-30','2012-11-30 12:27:41',1)
 ,(144,1,'2012-11-30','2012-11-30 12:29:20',1)
 ,(145,1,'2012-11-30','2012-11-30 12:29:21',1)
 ,(146,1,'2012-11-30','2012-11-30 12:29:21',1)
 ,(147,1,'2012-11-30','2012-11-30 12:29:21',1)
 ,(148,1,'2012-11-30','2012-11-30 12:29:21',1)
 ,(149,1,'2012-11-30','2012-11-30 12:29:21',1)
 ,(150,1,'2012-11-30','2012-11-30 12:29:22',1)
 ,(151,1,'2012-11-30','2012-11-30 12:29:22',1)
 ,(152,1,'2012-11-30','2012-11-30 12:29:23',1)
 ,(153,1,'2012-11-30','2012-11-30 12:29:23',1)
 ,(154,1,'2012-11-30','2012-11-30 12:29:23',1)
 ,(155,1,'2012-11-30','2012-11-30 12:29:23',1)
 ,(156,1,'2012-11-30','2012-11-30 12:29:24',1)
 ,(157,1,'2012-11-30','2012-11-30 12:29:24',1)
 ,(158,1,'2012-11-30','2012-11-30 12:29:24',1)
 ,(159,1,'2012-11-30','2012-11-30 12:29:24',1)
 ,(160,1,'2012-11-30','2012-11-30 12:29:25',1)
 ,(161,1,'2012-11-30','2012-11-30 12:29:25',1)
 ,(162,1,'2012-11-30','2012-11-30 12:29:25',1)
 ,(163,1,'2012-11-30','2012-11-30 12:29:26',1)
 ,(164,1,'2012-11-30','2012-11-30 12:29:26',1)
 ,(165,1,'2012-11-30','2012-11-30 12:29:26',1)
 ,(166,1,'2012-11-30','2012-11-30 12:29:26',1)
 ,(167,1,'2012-11-30','2012-11-30 12:29:27',1)
 ,(168,1,'2012-11-30','2012-11-30 12:29:27',1)
 ,(169,1,'2012-11-30','2012-11-30 12:29:27',1)
 ,(170,1,'2012-11-30','2012-11-30 12:29:27',1)
 ,(171,1,'2012-11-30','2012-11-30 12:29:27',1)
 ,(172,1,'2012-11-30','2012-11-30 12:29:28',1)
 ,(173,1,'2012-11-30','2012-11-30 12:29:28',1)
 ,(174,1,'2012-11-30','2012-11-30 12:29:28',1)
 ,(175,1,'2012-11-30','2012-11-30 12:29:28',1)
 ,(176,1,'2012-11-30','2012-11-30 12:29:28',1)
 ,(177,1,'2012-11-30','2012-11-30 12:29:28',1)
 ,(178,1,'2012-11-30','2012-11-30 12:29:29',1)
 ,(179,1,'2012-11-30','2012-11-30 12:29:29',1)
 ,(180,1,'2012-11-30','2012-11-30 12:29:29',1)
 ,(181,1,'2012-11-30','2012-11-30 12:29:29',1)
 ,(182,1,'2012-11-30','2012-11-30 12:29:29',1)
 ,(183,1,'2012-11-30','2012-11-30 12:29:29',1)
 ,(184,1,'2012-11-30','2012-11-30 12:29:30',1)
 ,(185,1,'2012-11-30','2012-11-30 12:29:30',1)
 ,(186,1,'2012-11-30','2012-11-30 12:29:30',1)
 ,(187,1,'2012-11-30','2012-11-30 12:29:30',1)
 ,(188,1,'2012-11-30','2012-11-30 12:29:30',1)
 ,(189,1,'2012-11-30','2012-11-30 12:29:30',1)
 ,(190,1,'2012-11-30','2012-11-30 12:29:31',1)
 ,(191,1,'2012-11-30','2012-11-30 12:29:31',1)
 ,(192,1,'2012-11-30','2012-11-30 12:29:31',1)
 ,(193,1,'2012-11-30','2012-11-30 12:29:31',1)
 ,(194,1,'2012-11-30','2012-11-30 12:29:31',1)
 ,(195,1,'2012-11-30','2012-11-30 12:29:31',1)
 ,(196,1,'2012-11-30','2012-11-30 12:29:31',1)
 ,(197,1,'2012-11-30','2012-11-30 12:29:32',1)
 ,(198,1,'2012-11-30','2012-11-30 12:29:32',1)
 ,(199,1,'2012-11-30','2012-11-30 12:29:32',1)
 ,(200,1,'2012-11-30','2012-11-30 12:29:32',1)
 ,(201,1,'2012-11-30','2012-11-30 12:29:32',1)
 ,(202,1,'2012-11-30','2012-11-30 12:29:32',1)
 ,(203,1,'2012-11-30','2012-11-30 12:29:33',1)
 ,(204,1,'2012-11-30','2012-11-30 12:29:33',1)
 ,(205,1,'2012-11-30','2012-11-30 12:29:33',1)
 ,(206,1,'2012-11-30','2012-11-30 12:29:33',1)
 ,(207,1,'2012-11-30','2012-11-30 12:29:33',1)
 ,(208,1,'2012-11-30','2012-11-30 12:29:33',1)
 ,(209,1,'2012-11-30','2012-11-30 12:29:34',1)
 ,(210,1,'2012-11-30','2012-11-30 12:29:34',1)
 ,(211,1,'2012-11-30','2012-11-30 12:29:34',1)
 ,(212,1,'2012-11-30','2012-11-30 12:29:34',1)
 ,(213,1,'2012-11-30','2012-11-30 12:29:34',1)
 ,(214,1,'2012-11-30','2012-11-30 12:29:34',1)
 ,(215,1,'2012-11-30','2012-11-30 12:29:35',1)
 ,(216,1,'2012-11-30','2012-11-30 12:29:35',1)
 ,(217,1,'2012-11-30','2012-11-30 12:29:35',1)
 ,(218,1,'2012-11-30','2012-11-30 12:29:35',1)
 ,(219,1,'2012-11-30','2012-11-30 12:29:35',1)
 ,(220,1,'2012-11-30','2012-11-30 12:29:35',1)
 ,(221,1,'2012-11-30','2012-11-30 12:29:35',1)
 ,(222,1,'2012-11-30','2012-11-30 12:29:36',1)
 ,(223,1,'2012-11-30','2012-11-30 12:30:25',1)
 ,(224,1,'2012-11-30','2012-11-30 12:30:50',1)
 ,(225,1,'2012-11-30','2012-11-30 12:32:01',1)
 ,(226,1,'2012-11-30','2012-11-30 12:32:42',1)
 ,(227,1,'2012-11-30','2012-11-30 12:32:44',1)
 ,(228,1,'2012-11-30','2012-11-30 12:32:45',1)
 ,(229,1,'2012-11-30','2012-11-30 12:32:45',1)
 ,(230,1,'2012-11-30','2012-11-30 12:32:46',1)
 ,(231,1,'2012-11-30','2012-11-30 12:32:46',1)
 ,(232,1,'2012-11-30','2012-11-30 12:32:46',1)
 ,(233,1,'2012-11-30','2012-11-30 12:32:46',1)
 ,(234,1,'2012-11-30','2012-11-30 12:32:46',1)
 ,(235,1,'2012-11-30','2012-11-30 12:32:46',1)
 ,(236,1,'2012-11-30','2012-11-30 12:32:47',1)
 ,(237,1,'2012-11-30','2012-11-30 12:32:47',1)
 ,(238,1,'2012-11-30','2012-11-30 12:33:14',1)
 ,(239,1,'2012-11-30','2012-11-30 12:33:22',1)
 ,(240,1,'2012-11-30','2012-11-30 12:33:28',1)
 ,(241,1,'2012-11-30','2012-11-30 12:33:47',1)
 ,(242,1,'2012-11-30','2012-11-30 12:34:28',1)
 ,(243,1,'2012-11-30','2012-11-30 12:34:31',1)
 ,(244,1,'2012-11-30','2012-11-30 12:36:13',1)
 ,(245,2,'2012-11-30','2012-11-30 12:39:53',1)
 ,(246,51,'2012-11-30','2012-11-30 12:40:01',1)
 ,(247,66,'2012-11-30','2012-11-30 12:40:06',1)
 ,(248,66,'2012-11-30','2012-11-30 12:40:12',1)
 ,(249,66,'2012-11-30','2012-11-30 12:40:13',1)
 ,(250,1,'2012-11-30','2012-11-30 12:40:15',1)
 ,(251,1,'2012-11-30','2012-11-30 12:40:26',1)
 ,(252,1,'2012-11-30','2012-11-30 12:40:55',1)
 ,(253,1,'2012-11-30','2012-11-30 12:41:18',1)
 ,(254,1,'2012-11-30','2012-11-30 12:42:37',1)
 ,(255,1,'2012-11-30','2012-11-30 12:42:42',1)
 ,(256,2,'2012-11-30','2012-11-30 12:48:13',1)
 ,(257,34,'2012-11-30','2012-11-30 12:48:25',1)
 ,(258,88,'2012-11-30','2012-11-30 12:48:31',1)
 ,(259,88,'2012-11-30','2012-11-30 12:48:45',1)
 ,(260,88,'2012-11-30','2012-11-30 12:48:46',1)
 ,(261,88,'2012-11-30','2012-11-30 12:48:49',1)
 ,(262,88,'2012-11-30','2012-11-30 12:49:11',1)
 ,(263,88,'2012-11-30','2012-11-30 12:49:15',1)
 ,(264,34,'2012-11-30','2012-11-30 12:49:17',1)
 ,(265,34,'2012-11-30','2012-11-30 12:49:33',1)
 ,(266,34,'2012-11-30','2012-11-30 12:50:15',1)
 ,(267,34,'2012-11-30','2012-11-30 12:50:16',1)
 ,(268,34,'2012-11-30','2012-11-30 12:50:23',1)
 ,(269,34,'2012-11-30','2012-11-30 13:20:53',1)
 ,(270,34,'2012-11-30','2012-11-30 13:20:54',1)
 ,(271,34,'2012-11-30','2012-11-30 13:21:02',1)
 ,(272,34,'2012-11-30','2012-11-30 13:21:05',1)
 ,(273,34,'2012-11-30','2012-11-30 13:21:09',1)
 ,(274,34,'2012-11-30','2012-11-30 13:21:20',1)
 ,(275,1,'2012-11-30','2012-11-30 13:21:26',1)
 ,(276,34,'2012-11-30','2012-11-30 13:21:31',1)
 ,(277,88,'2012-11-30','2012-11-30 13:21:36',1)
 ,(278,88,'2012-11-30','2012-11-30 13:21:38',1)
 ,(279,88,'2012-11-30','2012-11-30 13:21:48',1)
 ,(280,34,'2012-11-30','2012-11-30 13:21:53',1)
 ,(281,34,'2012-11-30','2012-11-30 13:21:56',1)
 ,(282,34,'2012-11-30','2012-11-30 13:22:03',1)
 ,(283,34,'2012-11-30','2012-11-30 13:22:03',1)
 ,(284,34,'2012-11-30','2012-11-30 13:22:08',1)
 ,(285,34,'2012-11-30','2012-11-30 13:22:20',1)
 ,(286,34,'2012-11-30','2012-11-30 13:22:20',1)
 ,(287,34,'2012-11-30','2012-11-30 13:22:28',1)
 ,(288,34,'2012-11-30','2012-11-30 13:22:42',1)
 ,(289,34,'2012-11-30','2012-11-30 13:22:55',1)
 ,(290,34,'2012-11-30','2012-11-30 13:22:55',1)
 ,(291,34,'2012-11-30','2012-11-30 13:23:01',1)
 ,(292,34,'2012-11-30','2012-11-30 13:23:05',1)
 ,(293,34,'2012-11-30','2012-11-30 13:23:25',1)
 ,(294,34,'2012-11-30','2012-11-30 13:23:25',1)
 ,(295,88,'2012-11-30','2012-11-30 13:23:34',1)
 ,(296,88,'2012-11-30','2012-11-30 13:23:37',1)
 ,(297,88,'2012-11-30','2012-11-30 13:23:43',1)
 ,(298,88,'2012-11-30','2012-11-30 13:23:44',1)
 ,(299,34,'2012-11-30','2012-11-30 13:23:49',1)
 ,(300,34,'2012-11-30','2012-11-30 13:23:57',1)
 ,(301,34,'2012-11-30','2012-11-30 13:24:08',1)
 ,(302,34,'2012-11-30','2012-11-30 13:24:08',1)
 ,(303,1,'2012-11-30','2012-11-30 13:24:13',1)
 ,(304,2,'2012-11-30','2012-11-30 13:46:04',1)
 ,(305,32,'2012-11-30','2012-11-30 13:46:11',1)
 ,(306,32,'2012-11-30','2012-11-30 13:46:15',1)
 ,(307,32,'2012-11-30','2012-11-30 13:46:20',1)
 ,(308,32,'2012-11-30','2012-11-30 13:46:21',1)
 ,(309,32,'2012-11-30','2012-11-30 13:46:25',1)
 ,(310,32,'2012-11-30','2012-11-30 13:46:30',1)
 ,(311,33,'2012-11-30','2012-11-30 13:46:33',1)
 ,(312,33,'2012-11-30','2012-11-30 13:47:20',1)
 ,(313,32,'2012-11-30','2012-11-30 13:47:20',1)
 ,(314,32,'2012-11-30','2012-11-30 13:47:27',1)
 ,(315,120,'2012-11-30','2012-11-30 13:47:27',1)
 ,(316,120,'2012-11-30','2012-11-30 13:47:34',1)
 ,(317,32,'2012-11-30','2012-11-30 13:48:05',1)
 ,(318,1,'2012-11-30','2012-11-30 13:48:09',1)
 ,(319,2,'2012-11-30','2012-11-30 13:48:18',1)
 ,(320,32,'2012-11-30','2012-11-30 13:48:24',1)
 ,(321,33,'2012-11-30','2012-11-30 13:51:01',1)
 ,(322,1,'2012-11-30','2012-11-30 13:51:17',1)
 ,(323,33,'2012-11-30','2012-11-30 13:51:22',1)
 ,(324,1,'2012-11-30','2012-11-30 13:51:30',1)
 ,(325,32,'2012-11-30','2012-11-30 13:51:37',1)
 ,(326,33,'2012-11-30','2012-11-30 13:51:42',1)
 ,(327,33,'2012-11-30','2012-11-30 13:52:09',1)
 ,(328,32,'2012-11-30','2012-11-30 13:52:09',1)
 ,(329,1,'2012-11-30','2012-11-30 13:52:13',1)
 ,(330,7,'2012-11-30','2012-11-30 13:52:18',1)
 ,(331,6,'2012-11-30','2012-11-30 13:52:34',1)
 ,(332,7,'2012-11-30','2012-11-30 13:52:35',1)
 ,(333,2,'2012-11-30','2012-11-30 13:52:53',1)
 ,(334,34,'2012-11-30','2012-11-30 13:52:57',1)
 ,(335,88,'2012-11-30','2012-11-30 13:53:15',1)
 ,(336,88,'2012-11-30','2012-11-30 13:54:02',1)
 ,(337,88,'2012-11-30','2012-11-30 13:54:02',1)
 ,(338,2,'2012-11-30','2012-11-30 13:54:35',1)
 ,(339,32,'2012-11-30','2012-11-30 13:54:40',1)
 ,(340,32,'2012-11-30','2012-11-30 13:54:55',1)
 ,(341,32,'2012-11-30','2012-11-30 13:55:09',1)
 ,(342,32,'2012-11-30','2012-11-30 13:55:13',1)
 ,(343,32,'2012-11-30','2012-11-30 13:55:19',1)
 ,(344,2,'2012-11-30','2012-11-30 13:55:23',1)
 ,(345,12,'2012-11-30','2012-11-30 13:55:29',1)
 ,(346,2,'2012-11-30','2012-11-30 13:55:34',1)
 ,(347,6,'2012-11-30','2012-11-30 14:46:49',1)
 ,(348,7,'2012-11-30','2012-11-30 14:46:49',1)
 ,(349,1,'2012-11-30','2012-11-30 14:46:53',1)
 ,(350,127,'2012-11-30','2012-11-30 14:46:56',1)
 ,(351,127,'2012-11-30','2012-11-30 14:47:00',1)
 ,(352,127,'2012-11-30','2012-11-30 15:24:37',1)
 ,(353,104,'2012-11-30','2012-11-30 15:24:39',1)
 ,(354,127,'2012-11-30','2012-11-30 15:24:42',1)
 ,(355,127,'2012-11-30','2012-11-30 15:28:44',1)
 ,(356,127,'2012-11-30','2012-11-30 15:29:00',1)
 ,(357,127,'2012-11-30','2012-11-30 15:29:16',1)
 ,(358,127,'2012-11-30','2012-11-30 15:29:19',1)
 ,(359,127,'2012-11-30','2012-11-30 15:29:28',1)
 ,(360,127,'2012-11-30','2012-11-30 15:29:51',1)
 ,(361,127,'2012-11-30','2012-11-30 15:30:12',1)
 ,(362,1,'2012-11-30','2012-11-30 15:30:19',1)
 ,(363,2,'2012-11-30','2012-11-30 15:30:24',1)
 ,(364,2,'2012-11-30','2012-11-30 15:30:24',1)
 ,(365,2,'2012-11-30','2012-11-30 15:30:25',1)
 ,(366,2,'2012-11-30','2012-11-30 15:30:26',1)
 ,(367,2,'2012-11-30','2012-11-30 15:30:27',1)
 ,(368,34,'2012-11-30','2012-11-30 15:30:32',1)
 ,(369,88,'2012-11-30','2012-11-30 15:30:39',1)
 ,(370,88,'2012-11-30','2012-11-30 15:30:42',1)
 ,(371,88,'2012-11-30','2012-11-30 15:30:51',1)
 ,(372,88,'2012-11-30','2012-11-30 15:30:51',1)
 ,(373,127,'2012-11-30','2012-11-30 15:31:00',1)
 ,(374,127,'2012-11-30','2012-11-30 15:31:30',1)
 ,(375,127,'2012-11-30','2012-11-30 15:31:45',1)
 ,(376,127,'2012-11-30','2012-11-30 15:33:31',1)
 ,(377,127,'2012-11-30','2012-11-30 15:34:48',1)
 ,(378,127,'2012-11-30','2012-11-30 15:35:49',1)
 ,(379,34,'2012-11-30','2012-11-30 15:36:51',1)
 ,(380,34,'2012-11-30','2012-11-30 15:36:57',1)
 ,(381,34,'2012-11-30','2012-11-30 15:37:02',1)
 ,(382,34,'2012-11-30','2012-11-30 15:37:03',1)
 ,(383,127,'2012-11-30','2012-11-30 15:37:05',1)
 ,(384,127,'2012-11-30','2012-11-30 15:40:47',1)
 ,(385,127,'2012-11-30','2012-11-30 15:40:55',1)
 ,(386,127,'2012-11-30','2012-11-30 15:41:00',1)
 ,(387,128,'2012-11-30','2012-11-30 15:41:46',1)
 ,(388,127,'2012-11-30','2012-11-30 15:41:49',1)
 ,(389,127,'2012-11-30','2012-11-30 15:43:35',1)
 ,(390,127,'2012-11-30','2012-11-30 16:05:33',1)
 ,(391,127,'2012-11-30','2012-11-30 16:05:43',1)
 ,(392,127,'2012-11-30','2012-11-30 16:05:47',1)
 ,(393,127,'2012-11-30','2012-11-30 16:05:48',1)
 ,(394,127,'2012-11-30','2012-11-30 16:05:48',1)
 ,(395,127,'2012-11-30','2012-11-30 16:05:55',1)
 ,(396,127,'2012-11-30','2012-11-30 16:06:00',1)
 ,(397,127,'2012-11-30','2012-11-30 16:06:11',1)
 ,(398,127,'2012-11-30','2012-11-30 16:10:46',1)
 ,(399,127,'2012-11-30','2012-11-30 16:11:08',1)
 ,(400,127,'2012-11-30','2012-11-30 16:11:30',1)
 ,(401,127,'2012-11-30','2012-11-30 16:11:38',1)
 ,(402,127,'2012-11-30','2012-11-30 16:12:09',1)
 ,(403,127,'2012-11-30','2012-11-30 16:31:31',1)
 ,(404,127,'2012-11-30','2012-11-30 16:31:40',1)
 ,(405,127,'2012-11-30','2012-11-30 16:31:53',1)
 ,(406,127,'2012-11-30','2012-11-30 16:31:54',1)
 ,(407,127,'2012-11-30','2012-11-30 16:31:58',1)
 ,(408,127,'2012-11-30','2012-11-30 16:32:05',1)
 ,(409,127,'2012-11-30','2012-11-30 16:32:09',1)
 ,(410,127,'2012-11-30','2012-11-30 16:34:21',1)
 ,(411,127,'2012-11-30','2012-11-30 16:34:44',1)
 ,(412,127,'2012-11-30','2012-11-30 16:35:27',1)
 ,(413,127,'2012-11-30','2012-11-30 16:58:38',1)
 ,(414,127,'2012-11-30','2012-11-30 16:58:55',1)
 ,(415,127,'2012-11-30','2012-11-30 16:59:13',1)
 ,(416,127,'2012-11-30','2012-11-30 16:59:24',1)
 ,(417,1,'2012-12-03','2012-12-03 10:29:24',0)
 ,(418,127,'2012-12-03','2012-12-03 10:29:27',0)
 ,(419,127,'2012-12-03','2012-12-03 10:30:17',0)
 ,(420,127,'2012-12-03','2012-12-03 10:30:21',0)
 ,(421,127,'2012-12-03','2012-12-03 10:30:32',0)
 ,(422,127,'2012-12-03','2012-12-03 10:31:06',0)
 ,(423,127,'2012-12-03','2012-12-03 10:31:15',0)
 ,(424,127,'2012-12-03','2012-12-03 10:32:01',0)
 ,(425,127,'2012-12-03','2012-12-03 10:32:14',0)
 ,(426,127,'2012-12-03','2012-12-03 10:34:05',0)
 ,(427,127,'2012-12-03','2012-12-03 10:34:08',0)
 ,(428,127,'2012-12-03','2012-12-03 10:35:02',0)
 ,(429,127,'2012-12-03','2012-12-03 10:35:19',0)
 ,(430,127,'2012-12-03','2012-12-03 10:37:07',0)
 ,(431,127,'2012-12-03','2012-12-03 10:37:17',0)
 ,(432,128,'2012-12-03','2012-12-03 11:01:23',0)
 ,(433,127,'2012-12-03','2012-12-03 11:01:26',0)
 ,(434,127,'2012-12-03','2012-12-03 11:05:09',0)
 ,(435,127,'2012-12-03','2012-12-03 11:05:50',0)
 ,(436,127,'2012-12-03','2012-12-03 11:06:44',0)
 ,(437,127,'2012-12-03','2012-12-03 11:07:40',0)
 ,(438,127,'2012-12-03','2012-12-03 11:08:01',0)
 ,(439,127,'2012-12-03','2012-12-03 11:09:11',0)
 ,(440,127,'2012-12-03','2012-12-03 11:10:39',0)
 ,(441,127,'2012-12-03','2012-12-03 11:13:50',0)
 ,(442,127,'2012-12-03','2012-12-03 11:13:51',0)
 ,(443,127,'2012-12-03','2012-12-03 11:22:49',0)
 ,(444,127,'2012-12-03','2012-12-03 11:22:49',0)
 ,(445,127,'2012-12-03','2012-12-03 11:26:46',0)
 ,(446,127,'2012-12-03','2012-12-03 11:26:48',0)
 ,(447,127,'2012-12-03','2012-12-03 11:26:49',0)
 ,(448,127,'2012-12-03','2012-12-03 11:29:43',0)
 ,(449,127,'2012-12-03','2012-12-03 11:30:07',0)
 ,(450,127,'2012-12-03','2012-12-03 11:30:19',0)
 ,(451,127,'2012-12-03','2012-12-03 11:32:45',0)
 ,(452,127,'2012-12-03','2012-12-03 13:35:30',0)
 ,(453,127,'2012-12-03','2012-12-03 13:36:04',0)
 ,(454,127,'2012-12-03','2012-12-03 13:36:21',0)
 ,(455,127,'2012-12-03','2012-12-03 13:36:44',0)
 ,(456,127,'2012-12-03','2012-12-03 13:37:47',0)
 ,(457,127,'2012-12-03','2012-12-03 13:38:14',0)
 ,(458,127,'2012-12-03','2012-12-03 13:38:57',0)
 ,(459,127,'2012-12-03','2012-12-03 13:39:10',0)
 ,(460,127,'2012-12-03','2012-12-03 13:39:25',0)
 ,(461,127,'2012-12-03','2012-12-03 13:40:33',0)
 ,(462,1,'2012-12-03','2012-12-03 13:40:36',0)
 ,(463,127,'2012-12-03','2012-12-03 13:40:39',0)
 ,(464,1,'2012-12-03','2012-12-03 13:40:40',0)
 ,(465,127,'2012-12-03','2012-12-03 13:40:41',0)
 ,(466,127,'2012-12-03','2012-12-03 13:42:08',0)
 ,(467,127,'2012-12-03','2012-12-03 13:42:15',0)
 ,(468,127,'2012-12-03','2012-12-03 13:42:43',0)
 ,(469,127,'2012-12-03','2012-12-03 13:47:43',0)
 ,(470,1,'2012-12-03','2012-12-03 13:48:25',0)
 ,(471,109,'2012-12-03','2012-12-03 13:48:47',0)
 ,(472,109,'2012-12-03','2012-12-03 13:48:50',0)
 ,(473,2,'2012-12-03','2012-12-03 13:48:51',1)
 ,(474,104,'2012-12-03','2012-12-03 13:48:53',1)
 ,(475,2,'2012-12-03','2012-12-03 13:48:58',1)
 ,(476,1,'2012-12-03','2012-12-03 13:54:36',1)
 ,(477,1,'2012-12-03','2012-12-03 13:54:39',1)
 ,(478,1,'2012-12-03','2012-12-03 13:55:19',1)
 ,(479,1,'2012-12-03','2012-12-03 13:56:18',1)
 ,(480,1,'2012-12-03','2012-12-03 13:57:49',1)
 ,(481,1,'2012-12-03','2012-12-03 13:58:01',1)
 ,(482,1,'2012-12-03','2012-12-03 13:58:09',1)
 ,(483,1,'2012-12-03','2012-12-03 13:58:17',1)
 ,(484,109,'2012-12-03','2012-12-03 13:58:24',1)
 ,(485,1,'2012-12-03','2012-12-03 13:58:25',0)
 ,(486,1,'2012-12-03','2012-12-03 13:59:07',0)
 ,(487,1,'2012-12-03','2012-12-03 13:59:20',0)
 ,(488,1,'2012-12-03','2012-12-03 14:00:07',0)
 ,(489,109,'2012-12-03','2012-12-03 14:00:16',0)
 ,(490,2,'2012-12-03','2012-12-03 14:00:17',1)
 ,(491,1,'2012-12-03','2012-12-03 14:00:21',1)
 ,(492,1,'2012-12-03','2012-12-03 14:00:24',1)
 ,(493,1,'2012-12-03','2012-12-03 14:00:51',1)
 ,(494,1,'2012-12-03','2012-12-03 14:02:51',1)
 ,(495,1,'2012-12-03','2012-12-03 14:02:53',1)
 ,(496,1,'2012-12-03','2012-12-03 14:03:19',1)
 ,(497,1,'2012-12-03','2012-12-03 14:03:29',1)
 ,(498,1,'2012-12-03','2012-12-03 14:04:05',1)
 ,(499,1,'2012-12-03','2012-12-03 14:04:18',1)
 ,(500,1,'2012-12-03','2012-12-03 14:04:31',1)
 ,(501,1,'2012-12-03','2012-12-03 14:04:38',1)
 ,(502,1,'2012-12-03','2012-12-03 14:04:43',1)
 ,(503,1,'2012-12-03','2012-12-03 14:04:46',1)
 ,(504,1,'2012-12-03','2012-12-03 14:04:54',1)
 ,(505,1,'2012-12-03','2012-12-03 14:05:01',1)
 ,(506,1,'2012-12-03','2012-12-03 14:05:09',1)
 ,(507,1,'2012-12-03','2012-12-03 14:05:25',1)
 ,(508,1,'2012-12-03','2012-12-03 14:05:32',1)
 ,(509,1,'2012-12-03','2012-12-03 14:05:32',1)
 ,(510,1,'2012-12-03','2012-12-03 14:05:33',1)
 ,(511,1,'2012-12-03','2012-12-03 14:05:41',1)
 ,(512,127,'2012-12-03','2012-12-03 14:05:54',1)
 ,(513,127,'2012-12-03','2012-12-03 14:06:05',1)
 ,(514,127,'2012-12-03','2012-12-03 14:06:10',1)
 ,(515,1,'2012-12-03','2012-12-03 14:08:54',1)
 ,(516,1,'2012-12-03','2012-12-03 14:10:16',1)
 ,(517,1,'2012-12-03','2012-12-03 14:10:32',1)
 ,(518,1,'2012-12-03','2012-12-03 14:10:49',1)
 ,(519,1,'2012-12-03','2012-12-03 14:11:36',1)
 ,(520,1,'2012-12-03','2012-12-03 14:11:58',1)
 ,(521,1,'2012-12-03','2012-12-03 14:12:03',1)
 ,(522,1,'2012-12-03','2012-12-03 14:12:10',1)
 ,(523,1,'2012-12-03','2012-12-03 14:12:13',1)
 ,(524,1,'2012-12-03','2012-12-03 14:13:52',1)
 ,(525,1,'2012-12-03','2012-12-03 14:14:14',1)
 ,(526,1,'2012-12-03','2012-12-03 14:16:07',1)
 ,(527,1,'2012-12-03','2012-12-03 14:16:32',1)
 ,(528,1,'2012-12-03','2012-12-03 14:17:32',1)
 ,(529,1,'2012-12-03','2012-12-03 14:17:36',1)
 ,(530,1,'2012-12-03','2012-12-03 14:17:49',1)
 ,(531,1,'2012-12-03','2012-12-03 14:18:00',1)
 ,(532,1,'2012-12-03','2012-12-03 14:18:09',1)
 ,(533,1,'2012-12-03','2012-12-03 14:22:45',1)
 ,(534,1,'2012-12-03','2012-12-03 14:23:48',1)
 ,(535,1,'2012-12-03','2012-12-03 14:24:06',1)
 ,(536,1,'2012-12-03','2012-12-03 14:24:10',1)
 ,(537,1,'2012-12-03','2012-12-03 14:24:30',1)
 ,(538,1,'2012-12-03','2012-12-03 14:24:43',1)
 ,(539,1,'2012-12-03','2012-12-03 14:25:26',1)
 ,(540,1,'2012-12-03','2012-12-03 14:26:18',1)
 ,(541,1,'2012-12-03','2012-12-03 14:33:34',1)
 ,(542,1,'2012-12-03','2012-12-03 14:33:37',1)
 ,(543,1,'2012-12-03','2012-12-03 14:34:32',1)
 ,(544,1,'2012-12-03','2012-12-03 14:35:29',1)
 ,(545,1,'2012-12-03','2012-12-03 14:37:36',1)
 ,(546,1,'2012-12-03','2012-12-03 14:41:49',1)
 ,(547,1,'2012-12-03','2012-12-03 14:42:07',1)
 ,(548,1,'2012-12-03','2012-12-03 14:43:37',1)
 ,(549,1,'2012-12-03','2012-12-03 14:43:46',1)
 ,(550,1,'2012-12-03','2012-12-03 14:44:16',1)
 ,(551,1,'2012-12-03','2012-12-03 14:46:23',1)
 ,(552,1,'2012-12-03','2012-12-03 14:46:58',1)
 ,(553,1,'2012-12-03','2012-12-03 14:47:17',1)
 ,(554,1,'2012-12-03','2012-12-03 14:48:03',1)
 ,(555,1,'2012-12-03','2012-12-03 14:48:14',1)
 ,(556,1,'2012-12-03','2012-12-03 14:48:28',1)
 ,(557,1,'2012-12-03','2012-12-03 14:48:40',1)
 ,(558,1,'2012-12-03','2012-12-03 14:49:56',1)
 ,(559,1,'2012-12-03','2012-12-03 14:50:18',1)
 ,(560,1,'2012-12-03','2012-12-03 14:53:12',1)
 ,(561,1,'2012-12-03','2012-12-03 14:55:16',1)
 ,(562,1,'2012-12-03','2012-12-03 14:55:30',1)
 ,(563,1,'2012-12-03','2012-12-03 14:55:30',1)
 ,(564,1,'2012-12-03','2012-12-03 14:55:38',1)
 ,(565,1,'2012-12-03','2012-12-03 14:55:56',1)
 ,(566,1,'2012-12-03','2012-12-03 14:57:45',1)
 ,(567,1,'2012-12-03','2012-12-03 14:58:26',1)
 ,(568,1,'2012-12-03','2012-12-03 14:59:17',1)
 ,(569,1,'2012-12-03','2012-12-03 15:01:20',1)
 ,(570,1,'2012-12-03','2012-12-03 15:01:32',1)
 ,(571,1,'2012-12-03','2012-12-03 15:01:40',1)
 ,(572,1,'2012-12-03','2012-12-03 15:01:47',1)
 ,(573,1,'2012-12-03','2012-12-03 15:01:58',1)
 ,(574,1,'2012-12-03','2012-12-03 15:02:32',1)
 ,(575,1,'2012-12-03','2012-12-03 15:02:47',1)
 ,(576,1,'2012-12-03','2012-12-03 15:02:53',1)
 ,(577,1,'2012-12-03','2012-12-03 15:02:58',1)
 ,(578,1,'2012-12-03','2012-12-03 15:03:17',1)
 ,(579,1,'2012-12-03','2012-12-03 15:03:45',1)
 ,(580,1,'2012-12-03','2012-12-03 15:03:57',1)
 ,(581,1,'2012-12-03','2012-12-03 15:14:21',1)
 ,(582,1,'2012-12-03','2012-12-03 15:15:26',1)
 ,(583,1,'2012-12-03','2012-12-03 15:19:31',1)
 ,(584,1,'2012-12-03','2012-12-03 15:19:39',1)
 ,(585,1,'2012-12-03','2012-12-03 15:19:55',1)
 ,(586,1,'2012-12-03','2012-12-03 15:23:25',1)
 ,(587,1,'2012-12-03','2012-12-03 15:24:13',1)
 ,(588,1,'2012-12-03','2012-12-03 15:24:41',1)
 ,(589,1,'2012-12-03','2012-12-03 15:24:50',1)
 ,(590,1,'2012-12-03','2012-12-03 15:25:11',1)
 ,(591,1,'2012-12-03','2012-12-03 15:25:33',1)
 ,(592,1,'2012-12-03','2012-12-03 15:26:26',1)
 ,(593,1,'2012-12-03','2012-12-03 15:26:45',1)
 ,(594,1,'2012-12-03','2012-12-03 15:27:13',1)
 ,(595,1,'2012-12-03','2012-12-03 15:29:06',1)
 ,(596,1,'2012-12-03','2012-12-03 15:29:40',1)
 ,(597,1,'2012-12-03','2012-12-03 15:30:05',1)
 ,(598,1,'2012-12-03','2012-12-03 15:30:52',1)
 ,(599,1,'2012-12-03','2012-12-03 15:31:07',1)
 ,(600,1,'2012-12-03','2012-12-03 15:31:36',1)
 ,(601,1,'2012-12-03','2012-12-03 15:31:54',1)
 ,(602,1,'2012-12-03','2012-12-03 15:36:16',1)
 ,(603,1,'2012-12-03','2012-12-03 15:36:35',1)
 ,(604,1,'2012-12-03','2012-12-03 15:37:14',1)
 ,(605,1,'2012-12-03','2012-12-03 15:37:33',1)
 ,(606,1,'2012-12-03','2012-12-03 15:37:49',1)
 ,(607,1,'2012-12-03','2012-12-03 15:38:03',1)
 ,(608,1,'2012-12-03','2012-12-03 15:38:17',1)
 ,(609,1,'2012-12-03','2012-12-03 15:38:34',1)
 ,(610,1,'2012-12-03','2012-12-03 15:38:43',1)
 ,(611,1,'2012-12-03','2012-12-03 15:39:15',1)
 ,(612,1,'2012-12-03','2012-12-03 15:40:05',1)
 ,(613,1,'2012-12-03','2012-12-03 15:52:30',1)
 ,(614,1,'2012-12-03','2012-12-03 15:52:49',1)
 ,(615,1,'2012-12-03','2012-12-03 15:53:13',1)
 ,(616,1,'2012-12-03','2012-12-03 15:53:18',1)
 ,(617,1,'2012-12-03','2012-12-03 15:54:16',1)
 ,(618,1,'2012-12-03','2012-12-03 15:56:15',1)
 ,(619,1,'2012-12-03','2012-12-03 15:57:33',1)
 ,(620,1,'2012-12-03','2012-12-03 15:57:34',1)
 ,(621,1,'2012-12-03','2012-12-03 15:59:40',1)
 ,(622,1,'2012-12-03','2012-12-03 16:00:50',1)
 ,(623,1,'2012-12-03','2012-12-03 16:00:52',1)
 ,(624,127,'2012-12-03','2012-12-03 16:01:30',1)
 ,(625,127,'2012-12-03','2012-12-03 16:01:48',1)
 ,(626,127,'2012-12-03','2012-12-03 16:01:50',1)
 ,(627,127,'2012-12-03','2012-12-03 16:01:50',1)
 ,(628,127,'2012-12-03','2012-12-03 16:02:08',1)
 ,(629,127,'2012-12-03','2012-12-03 16:02:21',1)
 ,(630,127,'2012-12-03','2012-12-03 16:03:25',1)
 ,(631,127,'2012-12-03','2012-12-03 16:04:14',1)
 ,(632,127,'2012-12-03','2012-12-03 16:04:24',1)
 ,(633,127,'2012-12-03','2012-12-03 16:04:33',1)
 ,(634,127,'2012-12-03','2012-12-03 16:05:13',1)
 ,(635,127,'2012-12-03','2012-12-03 16:05:26',1)
 ,(636,127,'2012-12-03','2012-12-03 16:06:00',1)
 ,(637,127,'2012-12-03','2012-12-03 16:06:20',1)
 ,(638,127,'2012-12-03','2012-12-03 16:06:29',1)
 ,(639,127,'2012-12-03','2012-12-03 16:06:41',1)
 ,(640,127,'2012-12-03','2012-12-03 16:06:43',1)
 ,(641,127,'2012-12-03','2012-12-03 16:07:11',1)
 ,(642,127,'2012-12-03','2012-12-03 16:07:31',1)
 ,(643,127,'2012-12-03','2012-12-03 16:07:59',1)
 ,(644,127,'2012-12-03','2012-12-03 16:08:42',1)
 ,(645,127,'2012-12-03','2012-12-03 16:09:37',1)
 ,(646,127,'2012-12-03','2012-12-03 16:09:47',1)
 ,(647,127,'2012-12-03','2012-12-03 16:10:41',1)
 ,(648,127,'2012-12-03','2012-12-03 16:11:02',1)
 ,(649,127,'2012-12-03','2012-12-03 16:11:03',1)
 ,(650,127,'2012-12-03','2012-12-03 16:11:13',1)
 ,(651,127,'2012-12-03','2012-12-03 16:11:23',1)
 ,(652,127,'2012-12-03','2012-12-03 16:11:42',1)
 ,(653,127,'2012-12-03','2012-12-03 16:11:59',1)
 ,(654,127,'2012-12-03','2012-12-03 16:12:06',1)
 ,(655,127,'2012-12-03','2012-12-03 16:12:19',1)
 ,(656,127,'2012-12-03','2012-12-03 16:12:37',1)
 ,(657,127,'2012-12-03','2012-12-03 16:12:48',1)
 ,(658,127,'2012-12-03','2012-12-03 16:12:58',1)
 ,(659,127,'2012-12-03','2012-12-03 16:13:03',1)
 ,(660,127,'2012-12-03','2012-12-03 16:13:12',1)
 ,(661,127,'2012-12-03','2012-12-03 16:13:21',1)
 ,(662,127,'2012-12-03','2012-12-03 16:13:32',1)
 ,(663,127,'2012-12-03','2012-12-03 16:13:58',1)
 ,(664,127,'2012-12-03','2012-12-03 16:14:04',1)
 ,(665,127,'2012-12-03','2012-12-03 16:14:23',1)
 ,(666,127,'2012-12-03','2012-12-03 16:14:53',1)
 ,(667,127,'2012-12-03','2012-12-03 16:15:03',1)
 ,(668,127,'2012-12-03','2012-12-03 16:15:54',1)
 ,(669,127,'2012-12-03','2012-12-03 16:16:23',1)
 ,(670,127,'2012-12-03','2012-12-03 16:17:07',1)
 ,(671,1,'2012-12-03','2012-12-03 16:17:13',1)
 ,(672,1,'2012-12-03','2012-12-03 16:17:17',1)
 ,(673,1,'2012-12-03','2012-12-03 16:17:26',1)
 ,(674,1,'2012-12-03','2012-12-03 16:22:00',0)
 ,(675,1,'2012-12-03','2012-12-03 16:22:28',0)
 ,(676,127,'2012-12-03','2012-12-03 16:22:42',0)
 ,(677,1,'2012-12-03','2012-12-03 16:23:29',1)
 ,(678,1,'2012-12-03','2012-12-03 16:25:09',1)
 ,(679,1,'2012-12-03','2012-12-03 16:25:27',1)
 ,(680,1,'2012-12-03','2012-12-03 16:25:44',1)
 ,(681,1,'2012-12-03','2012-12-03 16:26:27',1)
 ,(682,1,'2012-12-03','2012-12-03 16:27:18',1)
 ,(683,1,'2012-12-03','2012-12-03 16:28:01',1)
 ,(684,1,'2012-12-03','2012-12-03 16:29:15',1)
 ,(685,55,'2012-12-03','2012-12-03 16:29:44',1)
 ,(686,55,'2012-12-03','2012-12-03 16:30:22',1)
 ,(687,55,'2012-12-03','2012-12-03 16:30:22',1)
 ,(688,1,'2012-12-03','2012-12-03 16:30:26',1)
 ,(689,55,'2012-12-03','2012-12-03 16:30:42',1)
 ,(690,55,'2012-12-03','2012-12-03 16:31:22',1)
 ,(691,55,'2012-12-03','2012-12-03 16:31:22',1)
 ,(692,1,'2012-12-03','2012-12-03 16:31:25',1)
 ,(693,1,'2012-12-03','2012-12-03 16:44:44',1)
 ,(694,1,'2012-12-03','2012-12-03 16:46:00',1)
 ,(695,1,'2012-12-03','2012-12-03 16:47:29',1)
 ,(696,1,'2012-12-03','2012-12-03 16:47:36',1)
 ,(697,1,'2012-12-03','2012-12-03 16:47:41',1)
 ,(698,1,'2012-12-03','2012-12-03 16:47:45',1)
 ,(699,1,'2012-12-03','2012-12-03 16:48:51',1)
 ,(700,1,'2012-12-03','2012-12-03 16:49:02',1)
 ,(701,1,'2012-12-03','2012-12-03 16:49:14',1)
 ,(702,1,'2012-12-03','2012-12-03 16:49:37',1)
 ,(703,1,'2012-12-03','2012-12-03 17:15:44',0)
 ,(704,1,'2012-12-03','2012-12-03 17:16:49',0)
 ,(705,1,'2012-12-03','2012-12-03 17:17:14',0)
 ,(706,1,'2012-12-03','2012-12-03 17:17:28',0)
 ,(707,1,'2012-12-03','2012-12-03 17:18:07',0)
 ,(708,1,'2012-12-03','2012-12-03 17:18:50',0)
 ,(709,1,'2012-12-03','2012-12-03 17:18:57',0)
 ,(710,1,'2012-12-03','2012-12-03 17:19:08',0)
 ,(711,1,'2012-12-03','2012-12-03 17:19:46',0)
 ,(712,1,'2012-12-03','2012-12-03 17:20:11',0)
 ,(713,1,'2012-12-03','2012-12-03 17:20:18',0)
 ,(714,1,'2012-12-03','2012-12-03 17:20:24',0)
 ,(715,1,'2012-12-03','2012-12-03 17:20:50',0)
 ,(716,1,'2012-12-03','2012-12-03 17:20:56',0)
 ,(717,1,'2012-12-03','2012-12-03 17:21:08',0)
 ,(718,1,'2012-12-03','2012-12-03 17:21:20',0)
 ,(719,127,'2012-12-03','2012-12-03 17:21:24',0)
 ,(720,127,'2012-12-03','2012-12-03 17:22:01',0)
 ,(721,127,'2012-12-03','2012-12-03 17:23:06',0)
 ,(722,127,'2012-12-03','2012-12-03 17:23:17',0)
 ,(723,127,'2012-12-03','2012-12-03 17:23:34',0)
 ,(724,127,'2012-12-03','2012-12-03 17:23:57',0)
 ,(725,127,'2012-12-03','2012-12-03 17:24:06',0)
 ,(726,127,'2012-12-03','2012-12-03 17:24:23',0)
 ,(727,127,'2012-12-03','2012-12-03 17:24:46',0)
 ,(728,127,'2012-12-03','2012-12-03 17:24:54',0)
 ,(729,127,'2012-12-03','2012-12-03 17:25:10',0)
 ,(730,127,'2012-12-03','2012-12-03 17:25:32',0)
 ,(731,127,'2012-12-03','2012-12-03 17:26:09',0)
 ,(732,127,'2012-12-03','2012-12-03 17:26:22',0)
 ,(733,128,'2012-12-03','2012-12-03 17:26:35',0)
 ,(734,127,'2012-12-03','2012-12-03 17:26:39',0)
 ,(735,127,'2012-12-03','2012-12-03 17:27:18',0)
 ,(736,127,'2012-12-03','2012-12-03 17:28:22',0)
 ,(737,127,'2012-12-03','2012-12-03 17:29:13',0)
 ,(738,127,'2012-12-03','2012-12-03 17:29:30',0)
 ,(739,127,'2012-12-03','2012-12-03 17:29:48',0)
 ,(740,127,'2012-12-03','2012-12-03 17:30:13',0)
 ,(741,127,'2012-12-03','2012-12-03 17:30:18',0)
 ,(742,127,'2012-12-03','2012-12-03 17:30:19',0)
 ,(743,127,'2012-12-03','2012-12-03 17:30:19',0)
 ,(744,127,'2012-12-03','2012-12-03 17:30:20',0)
 ,(745,127,'2012-12-03','2012-12-03 17:30:20',0)
 ,(746,127,'2012-12-03','2012-12-03 17:30:20',0)
 ,(747,127,'2012-12-03','2012-12-03 17:30:21',0)
 ,(748,128,'2012-12-04','2012-12-04 09:56:10',0)
 ,(749,109,'2012-12-04','2012-12-04 09:57:59',0)
 ,(750,2,'2012-12-04','2012-12-04 09:58:00',1)
 ,(751,7,'2012-12-04','2012-12-04 09:58:05',1)
 ,(752,6,'2012-12-04','2012-12-04 09:58:35',1)
 ,(753,7,'2012-12-04','2012-12-04 09:58:35',1)
 ,(754,6,'2012-12-04','2012-12-04 09:59:27',1)
 ,(755,7,'2012-12-04','2012-12-04 09:59:28',1)
 ,(756,1,'2012-12-04','2012-12-04 10:00:10',1)
 ,(757,127,'2012-12-04','2012-12-04 10:00:14',1)
 ,(758,131,'2012-12-04','2012-12-04 10:00:48',1)
 ,(759,131,'2012-12-04','2012-12-04 10:01:08',1)
 ,(760,2,'2012-12-04','2012-12-04 10:01:44',1)
 ,(761,32,'2012-12-04','2012-12-04 10:01:50',1)
 ,(762,32,'2012-12-04','2012-12-04 10:02:10',1)
 ,(763,32,'2012-12-04','2012-12-04 10:02:21',1)
 ,(764,32,'2012-12-04','2012-12-04 10:02:22',1)
 ,(765,32,'2012-12-04','2012-12-04 10:02:26',1)
 ,(766,125,'2012-12-04','2012-12-04 10:02:26',1)
 ,(767,125,'2012-12-04','2012-12-04 10:02:29',1)
 ,(768,131,'2012-12-04','2012-12-04 10:08:32',1)
 ,(769,131,'2012-12-04','2012-12-04 10:08:33',1)
 ,(770,131,'2012-12-04','2012-12-04 10:08:44',1)
 ,(771,131,'2012-12-04','2012-12-04 10:09:22',1)
 ,(772,131,'2012-12-04','2012-12-04 10:09:45',1)
 ,(773,131,'2012-12-04','2012-12-04 10:11:16',1)
 ,(774,131,'2012-12-04','2012-12-04 10:11:23',1)
 ,(775,127,'2012-12-04','2012-12-04 10:11:26',1)
 ,(776,1,'2012-12-04','2012-12-04 10:11:29',1)
 ,(777,127,'2012-12-04','2012-12-04 10:11:32',1)
 ,(778,2,'2012-12-04','2012-12-04 10:11:38',1)
 ,(779,7,'2012-12-04','2012-12-04 10:11:42',1)
 ,(780,6,'2012-12-04','2012-12-04 10:12:02',1)
 ,(781,7,'2012-12-04','2012-12-04 10:12:03',1)
 ,(782,127,'2012-12-04','2012-12-04 10:12:07',1)
 ,(783,136,'2012-12-04','2012-12-04 10:12:11',1)
 ,(784,136,'2012-12-04','2012-12-04 10:12:16',1)
 ,(785,32,'2012-12-04','2012-12-04 10:12:26',1)
 ,(786,32,'2012-12-04','2012-12-04 10:12:29',1)
 ,(787,125,'2012-12-04','2012-12-04 10:12:29',1)
 ,(788,125,'2012-12-04','2012-12-04 10:12:35',1)
 ,(789,125,'2012-12-04','2012-12-04 10:13:09',1)
 ,(790,32,'2012-12-04','2012-12-04 10:13:14',1)
 ,(791,136,'2012-12-04','2012-12-04 10:13:19',1)
 ,(792,136,'2012-12-04','2012-12-04 10:13:45',1)
 ,(793,127,'2012-12-04','2012-12-04 10:13:54',1)
 ,(794,137,'2012-12-04','2012-12-04 10:14:08',1)
 ,(795,137,'2012-12-04','2012-12-04 10:14:17',1)
 ,(796,127,'2012-12-04','2012-12-04 10:14:22',1)
 ,(797,138,'2012-12-04','2012-12-04 10:14:38',1)
 ,(798,138,'2012-12-04','2012-12-04 10:14:44',1)
 ,(799,138,'2012-12-04','2012-12-04 10:14:50',1)
 ,(800,138,'2012-12-04','2012-12-04 10:14:55',1)
 ,(801,127,'2012-12-04','2012-12-04 10:14:58',1)
 ,(802,7,'2012-12-04','2012-12-04 10:15:08',1)
 ,(803,1,'2012-12-04','2012-12-04 10:15:14',1)
 ,(804,127,'2012-12-04','2012-12-04 10:15:18',1)
 ,(805,127,'2012-12-04','2012-12-04 10:16:14',1)
 ,(806,127,'2012-12-04','2012-12-04 10:16:53',1)
 ,(807,127,'2012-12-04','2012-12-04 10:18:41',1)
 ,(808,127,'2012-12-04','2012-12-04 10:19:47',1)
 ,(809,127,'2012-12-04','2012-12-04 10:20:07',1)
 ,(810,127,'2012-12-04','2012-12-04 10:20:28',1)
 ,(811,127,'2012-12-04','2012-12-04 10:20:57',1)
 ,(812,127,'2012-12-04','2012-12-04 10:21:12',1)
 ,(813,127,'2012-12-04','2012-12-04 10:21:21',1)
 ,(814,127,'2012-12-04','2012-12-04 10:21:30',1)
 ,(815,127,'2012-12-04','2012-12-04 10:22:43',1)
 ,(816,127,'2012-12-04','2012-12-04 10:23:20',1)
 ,(817,127,'2012-12-04','2012-12-04 10:23:38',1)
 ,(818,127,'2012-12-04','2012-12-04 10:24:15',1)
 ,(819,127,'2012-12-04','2012-12-04 10:28:11',1)
 ,(820,138,'2012-12-04','2012-12-04 10:28:14',1)
 ,(821,127,'2012-12-04','2012-12-04 10:28:16',1)
 ,(822,138,'2012-12-04','2012-12-04 10:28:19',1)
 ,(823,127,'2012-12-04','2012-12-04 10:28:21',1)
 ,(824,127,'2012-12-04','2012-12-04 10:28:57',1)
 ,(825,127,'2012-12-04','2012-12-04 10:30:20',1)
 ,(826,127,'2012-12-04','2012-12-04 10:30:41',1)
 ,(827,127,'2012-12-04','2012-12-04 10:30:49',1)
 ,(828,127,'2012-12-04','2012-12-04 10:30:51',1)
 ,(829,127,'2012-12-04','2012-12-04 10:35:47',1)
 ,(830,127,'2012-12-04','2012-12-04 10:36:17',1)
 ,(831,137,'2012-12-04','2012-12-04 10:36:19',1)
 ,(832,127,'2012-12-04','2012-12-04 10:36:23',1)
 ,(833,127,'2012-12-04','2012-12-04 10:36:30',1)
 ,(834,127,'2012-12-04','2012-12-04 10:38:56',1)
 ,(835,127,'2012-12-04','2012-12-04 10:39:09',1)
 ,(836,127,'2012-12-04','2012-12-04 10:39:28',1)
 ,(837,136,'2012-12-04','2012-12-04 10:39:31',1)
 ,(838,127,'2012-12-04','2012-12-04 10:40:08',1)
 ,(839,137,'2012-12-04','2012-12-04 10:40:11',1)
 ,(840,137,'2012-12-04','2012-12-04 10:43:15',1)
 ,(841,127,'2012-12-04','2012-12-04 10:44:22',1)
 ,(842,137,'2012-12-04','2012-12-04 10:44:26',1)
 ,(843,127,'2012-12-04','2012-12-04 10:45:24',1)
 ,(844,137,'2012-12-04','2012-12-04 10:45:27',1)
 ,(845,32,'2012-12-04','2012-12-04 10:46:35',1)
 ,(846,127,'2012-12-04','2012-12-04 10:46:37',1)
 ,(847,137,'2012-12-04','2012-12-04 10:46:40',1)
 ,(848,127,'2012-12-04','2012-12-04 10:46:49',1)
 ,(849,137,'2012-12-04','2012-12-04 10:46:52',1)
 ,(850,137,'2012-12-04','2012-12-04 10:46:57',1)
 ,(851,127,'2012-12-04','2012-12-04 10:47:32',1)
 ,(852,137,'2012-12-04','2012-12-04 10:47:34',1)
 ,(853,127,'2012-12-04','2012-12-04 10:50:43',1)
 ,(854,138,'2012-12-04','2012-12-04 10:50:47',1)
 ,(855,138,'2012-12-04','2012-12-04 10:51:15',1)
 ,(856,138,'2012-12-04','2012-12-04 10:51:29',1)
 ,(857,138,'2012-12-04','2012-12-04 10:51:40',1)
 ,(858,138,'2012-12-04','2012-12-04 10:51:43',1)
 ,(859,138,'2012-12-04','2012-12-04 10:52:31',1)
 ,(860,138,'2012-12-04','2012-12-04 10:52:40',1)
 ,(861,138,'2012-12-04','2012-12-04 10:52:44',1)
 ,(862,32,'2012-12-04','2012-12-04 10:53:30',1)
 ,(863,138,'2012-12-04','2012-12-04 10:56:59',1)
 ,(864,138,'2012-12-04','2012-12-04 10:57:16',1)
 ,(865,138,'2012-12-04','2012-12-04 10:57:18',1)
 ,(866,138,'2012-12-04','2012-12-04 10:57:19',1)
 ,(867,138,'2012-12-04','2012-12-04 10:57:33',1)
 ,(868,1,'2012-12-04','2012-12-04 10:57:39',1)
 ,(869,127,'2012-12-04','2012-12-04 10:57:43',1)
 ,(870,137,'2012-12-04','2012-12-04 10:57:46',1)
 ,(871,138,'2012-12-04','2012-12-04 10:58:07',1)
 ,(872,138,'2012-12-04','2012-12-04 10:58:12',1)
 ,(873,138,'2012-12-04','2012-12-04 10:58:23',1)
 ,(874,138,'2012-12-04','2012-12-04 10:58:58',1)
 ,(875,138,'2012-12-04','2012-12-04 10:59:50',1)
 ,(876,138,'2012-12-04','2012-12-04 11:00:06',1)
 ,(877,137,'2012-12-04','2012-12-04 11:21:02',1)
 ,(878,127,'2012-12-04','2012-12-04 11:39:22',1)
 ,(879,109,'2012-12-04','2012-12-04 11:39:29',1)
 ,(880,1,'2012-12-04','2012-12-04 11:39:30',0)
 ,(881,127,'2012-12-04','2012-12-04 11:40:26',0)
 ,(882,127,'2012-12-04','2012-12-04 11:40:31',0)
 ,(883,127,'2012-12-04','2012-12-04 11:40:31',0)
 ,(884,127,'2012-12-04','2012-12-04 11:40:35',0)
 ,(885,138,'2012-12-04','2012-12-04 11:40:55',0)
 ,(886,127,'2012-12-04','2012-12-04 12:57:08',0)
 ,(887,127,'2012-12-04','2012-12-04 12:57:56',0)
 ,(888,127,'2012-12-04','2012-12-04 12:58:40',0)
 ,(889,127,'2012-12-04','2012-12-04 12:58:55',0)
 ,(890,127,'2012-12-04','2012-12-04 12:59:01',0)
 ,(891,138,'2012-12-04','2012-12-04 12:59:51',0)
 ,(892,127,'2012-12-04','2012-12-04 12:59:57',0)
 ,(893,127,'2012-12-04','2012-12-04 13:00:07',0)
 ,(894,127,'2012-12-04','2012-12-04 13:00:09',0)
 ,(895,127,'2012-12-04','2012-12-04 13:01:35',0)
 ,(896,136,'2012-12-04','2012-12-04 13:02:08',0)
 ,(897,1,'2012-12-04','2012-12-04 13:03:16',0)
 ,(898,138,'2012-12-04','2012-12-04 13:03:30',0)
 ,(899,127,'2012-12-04','2012-12-04 13:03:35',0)
 ,(900,127,'2012-12-04','2012-12-04 13:03:55',0)
 ,(901,136,'2012-12-04','2012-12-04 13:03:57',0)
 ,(902,138,'2012-12-04','2012-12-04 13:03:58',0)
 ,(903,137,'2012-12-04','2012-12-04 13:04:00',0)
 ,(904,127,'2012-12-04','2012-12-04 13:04:10',0)
 ,(905,137,'2012-12-04','2012-12-04 13:04:12',0)
 ,(906,138,'2012-12-04','2012-12-04 13:04:16',0)
 ,(907,137,'2012-12-04','2012-12-04 13:04:16',0)
 ,(908,137,'2012-12-04','2012-12-04 13:04:17',0)
 ,(909,137,'2012-12-04','2012-12-04 13:04:17',0)
 ,(910,137,'2012-12-04','2012-12-04 13:04:17',0)
 ,(911,137,'2012-12-04','2012-12-04 13:04:18',0)
 ,(912,137,'2012-12-04','2012-12-04 13:04:18',0)
 ,(913,137,'2012-12-04','2012-12-04 13:04:19',0)
 ,(914,137,'2012-12-04','2012-12-04 13:04:19',0)
 ,(915,137,'2012-12-04','2012-12-04 13:04:19',0)
 ,(916,136,'2012-12-04','2012-12-04 13:04:40',0)
 ,(917,137,'2012-12-04','2012-12-04 13:05:05',0)
 ,(918,137,'2012-12-04','2012-12-04 13:05:35',0)
 ,(919,137,'2012-12-04','2012-12-04 13:05:41',0)
 ,(920,137,'2012-12-04','2012-12-04 13:05:50',0)
 ,(921,137,'2012-12-04','2012-12-04 13:06:07',0)
 ,(922,127,'2012-12-04','2012-12-04 13:06:56',0)
 ,(923,127,'2012-12-04','2012-12-04 13:07:42',0)
 ,(924,127,'2012-12-04','2012-12-04 13:09:00',0)
 ,(925,127,'2012-12-04','2012-12-04 13:09:13',0)
 ,(926,127,'2012-12-04','2012-12-04 13:09:28',0)
 ,(927,127,'2012-12-04','2012-12-04 13:13:32',0)
 ,(928,138,'2012-12-04','2012-12-04 13:13:35',0)
 ,(929,127,'2012-12-04','2012-12-04 13:13:41',0)
 ,(930,138,'2012-12-04','2012-12-04 13:13:43',0)
 ,(931,138,'2012-12-04','2012-12-04 13:13:44',0)
 ,(932,138,'2012-12-04','2012-12-04 13:13:45',0)
 ,(933,127,'2012-12-04','2012-12-04 13:13:58',0)
 ,(934,138,'2012-12-04','2012-12-04 13:14:00',0)
 ,(935,138,'2012-12-04','2012-12-04 13:14:01',0)
 ,(936,138,'2012-12-04','2012-12-04 13:14:01',0)
 ,(937,138,'2012-12-04','2012-12-04 13:14:02',0)
 ,(938,127,'2012-12-04','2012-12-04 13:14:17',0)
 ,(939,136,'2012-12-04','2012-12-04 13:14:20',0)
 ,(940,136,'2012-12-04','2012-12-04 13:14:22',0)
 ,(941,138,'2012-12-04','2012-12-04 13:14:23',0)
 ,(942,138,'2012-12-04','2012-12-04 13:14:25',0)
 ,(943,138,'2012-12-04','2012-12-04 13:14:27',0)
 ,(944,127,'2012-12-04','2012-12-04 13:14:32',0)
 ,(945,136,'2012-12-04','2012-12-04 13:14:35',0)
 ,(946,136,'2012-12-04','2012-12-04 13:14:38',0)
 ,(947,136,'2012-12-04','2012-12-04 13:14:39',0)
 ,(948,136,'2012-12-04','2012-12-04 13:14:40',0)
 ,(949,136,'2012-12-04','2012-12-04 13:14:42',0)
 ,(950,127,'2012-12-04','2012-12-04 13:14:53',0)
 ,(951,138,'2012-12-04','2012-12-04 13:14:55',0)
 ,(952,138,'2012-12-04','2012-12-04 13:14:56',0)
 ,(953,138,'2012-12-04','2012-12-04 13:14:58',0)
 ,(954,138,'2012-12-04','2012-12-04 13:14:58',0)
 ,(955,127,'2012-12-04','2012-12-04 13:15:23',0)
 ,(956,136,'2012-12-04','2012-12-04 13:15:26',0)
 ,(957,136,'2012-12-04','2012-12-04 13:15:27',0)
 ,(958,136,'2012-12-04','2012-12-04 13:15:29',0)
 ,(959,136,'2012-12-04','2012-12-04 13:15:30',0)
 ,(960,136,'2012-12-04','2012-12-04 13:15:30',0)
 ,(961,127,'2012-12-04','2012-12-04 13:15:36',0)
 ,(962,136,'2012-12-04','2012-12-04 13:15:38',0)
 ,(963,136,'2012-12-04','2012-12-04 13:15:39',0)
 ,(964,136,'2012-12-04','2012-12-04 13:15:39',0)
 ,(965,136,'2012-12-04','2012-12-04 13:15:41',0)
 ,(966,136,'2012-12-04','2012-12-04 13:15:41',0)
 ,(967,127,'2012-12-04','2012-12-04 13:17:50',0)
 ,(968,137,'2012-12-04','2012-12-04 13:17:53',0)
 ,(969,127,'2012-12-04','2012-12-04 13:18:01',0)
 ,(970,138,'2012-12-04','2012-12-04 13:18:03',0)
 ,(971,138,'2012-12-04','2012-12-04 13:18:04',0)
 ,(972,138,'2012-12-04','2012-12-04 13:18:05',0)
 ,(973,138,'2012-12-04','2012-12-04 13:18:05',0)
 ,(974,127,'2012-12-04','2012-12-04 13:18:31',0)
 ,(975,136,'2012-12-04','2012-12-04 13:18:33',0)
 ,(976,138,'2012-12-04','2012-12-04 13:18:36',0)
 ,(977,137,'2012-12-04','2012-12-04 13:18:37',0)
 ,(978,137,'2012-12-04','2012-12-04 13:18:37',0)
 ,(979,137,'2012-12-04','2012-12-04 13:18:38',0)
 ,(980,127,'2012-12-04','2012-12-04 13:19:06',0)
 ,(981,137,'2012-12-04','2012-12-04 13:19:08',0)
 ,(982,127,'2012-12-04','2012-12-04 13:19:21',0)
 ,(983,138,'2012-12-04','2012-12-04 13:19:23',0)
 ,(984,136,'2012-12-04','2012-12-04 13:19:26',0)
 ,(985,137,'2012-12-04','2012-12-04 13:19:27',0)
 ,(986,137,'2012-12-04','2012-12-04 13:19:28',0)
 ,(987,127,'2012-12-04','2012-12-04 13:19:49',0)
 ,(988,137,'2012-12-04','2012-12-04 13:19:52',0)
 ,(989,137,'2012-12-04','2012-12-04 13:19:52',0)
 ,(990,138,'2012-12-04','2012-12-04 13:19:56',0)
 ,(991,127,'2012-12-04','2012-12-04 13:20:10',0)
 ,(992,138,'2012-12-04','2012-12-04 13:20:12',0)
 ,(993,138,'2012-12-04','2012-12-04 13:20:14',0)
 ,(994,127,'2012-12-04','2012-12-04 13:20:33',0)
 ,(995,136,'2012-12-04','2012-12-04 13:20:35',0)
 ,(996,138,'2012-12-04','2012-12-04 13:20:38',0)
 ,(997,127,'2012-12-04','2012-12-04 13:20:40',0)
 ,(998,136,'2012-12-04','2012-12-04 13:20:43',0)
 ,(999,127,'2012-12-04','2012-12-04 13:20:57',0)
 ,(1000,138,'2012-12-04','2012-12-04 13:20:59',0)
 ,(1001,138,'2012-12-04','2012-12-04 13:21:00',0)
 ,(1002,136,'2012-12-04','2012-12-04 13:21:02',0)
 ,(1003,136,'2012-12-04','2012-12-04 13:21:03',0)
 ,(1004,136,'2012-12-04','2012-12-04 13:21:04',0)
 ,(1005,136,'2012-12-04','2012-12-04 13:21:05',0)
 ,(1006,136,'2012-12-04','2012-12-04 13:21:06',0)
 ,(1007,137,'2012-12-04','2012-12-04 13:21:11',0)
 ,(1008,137,'2012-12-04','2012-12-04 13:21:11',0)
 ,(1009,137,'2012-12-04','2012-12-04 13:21:12',0)
 ,(1010,127,'2012-12-04','2012-12-04 13:22:38',0)
 ,(1011,136,'2012-12-04','2012-12-04 13:22:42',0)
 ,(1012,127,'2012-12-04','2012-12-04 13:23:08',0)
 ,(1013,137,'2012-12-04','2012-12-04 13:23:10',0)
 ,(1014,137,'2012-12-04','2012-12-04 13:23:12',0)
 ,(1015,127,'2012-12-04','2012-12-04 13:23:38',0)
 ,(1016,137,'2012-12-04','2012-12-04 13:23:42',0)
 ,(1017,137,'2012-12-04','2012-12-04 13:23:43',0)
 ,(1018,127,'2012-12-04','2012-12-04 13:23:45',0)
 ,(1019,127,'2012-12-04','2012-12-04 13:24:04',0)
 ,(1020,137,'2012-12-04','2012-12-04 13:24:06',0)
 ,(1021,137,'2012-12-04','2012-12-04 13:24:08',0)
 ,(1022,137,'2012-12-04','2012-12-04 13:24:08',0)
 ,(1023,127,'2012-12-04','2012-12-04 13:24:14',0)
 ,(1024,136,'2012-12-04','2012-12-04 13:24:17',0)
 ,(1025,127,'2012-12-04','2012-12-04 13:25:16',0)
 ,(1026,136,'2012-12-04','2012-12-04 13:25:19',0)
 ,(1027,136,'2012-12-04','2012-12-04 13:25:20',0)
 ,(1028,136,'2012-12-04','2012-12-04 13:25:21',0)
 ,(1029,136,'2012-12-04','2012-12-04 13:25:21',0)
 ,(1030,136,'2012-12-04','2012-12-04 13:25:22',0)
 ,(1031,127,'2012-12-04','2012-12-04 13:25:23',0)
 ,(1032,127,'2012-12-04','2012-12-04 13:25:31',0)
 ,(1033,138,'2012-12-04','2012-12-04 13:25:33',0)
 ,(1034,138,'2012-12-04','2012-12-04 13:25:34',0)
 ,(1035,138,'2012-12-04','2012-12-04 13:25:35',0)
 ,(1036,138,'2012-12-04','2012-12-04 13:25:36',0)
 ,(1037,138,'2012-12-04','2012-12-04 13:25:38',0)
 ,(1038,127,'2012-12-04','2012-12-04 13:26:53',0)
 ,(1039,127,'2012-12-04','2012-12-04 13:26:57',0)
 ,(1040,136,'2012-12-04','2012-12-04 13:26:59',0)
 ,(1041,136,'2012-12-04','2012-12-04 13:27:01',0)
 ,(1042,136,'2012-12-04','2012-12-04 13:27:01',0)
 ,(1043,136,'2012-12-04','2012-12-04 13:27:02',0)
 ,(1044,136,'2012-12-04','2012-12-04 13:27:02',0)
 ,(1045,127,'2012-12-04','2012-12-04 13:27:36',0)
 ,(1046,127,'2012-12-04','2012-12-04 13:27:40',0)
 ,(1047,127,'2012-12-04','2012-12-04 13:27:54',0)
 ,(1048,127,'2012-12-04','2012-12-04 13:28:01',0)
 ,(1049,127,'2012-12-04','2012-12-04 13:28:18',0)
 ,(1050,127,'2012-12-04','2012-12-04 13:29:16',0)
 ,(1051,127,'2012-12-04','2012-12-04 13:29:26',0)
 ,(1052,127,'2012-12-04','2012-12-04 13:30:57',0)
 ,(1053,127,'2012-12-04','2012-12-04 13:31:51',0)
 ,(1054,127,'2012-12-04','2012-12-04 13:33:27',0)
 ,(1055,127,'2012-12-04','2012-12-04 13:34:29',0)
 ,(1056,138,'2012-12-04','2012-12-04 13:35:01',0)
 ,(1057,138,'2012-12-04','2012-12-04 13:35:43',0)
 ,(1058,127,'2012-12-04','2012-12-04 13:36:18',0)
 ,(1059,127,'2012-12-04','2012-12-04 13:36:39',0)
 ,(1060,127,'2012-12-04','2012-12-04 13:36:42',0)
 ,(1061,138,'2012-12-04','2012-12-04 13:36:44',0)
 ,(1062,127,'2012-12-04','2012-12-04 13:37:15',0)
 ,(1063,138,'2012-12-04','2012-12-04 13:37:19',0)
 ,(1064,138,'2012-12-04','2012-12-04 13:37:20',0)
 ,(1065,138,'2012-12-04','2012-12-04 13:37:22',0)
 ,(1066,138,'2012-12-04','2012-12-04 13:37:23',0)
 ,(1067,138,'2012-12-04','2012-12-04 13:37:24',0)
 ,(1068,127,'2012-12-04','2012-12-04 13:39:05',0)
 ,(1069,127,'2012-12-04','2012-12-04 13:39:11',0)
 ,(1070,137,'2012-12-04','2012-12-04 13:39:19',0)
 ,(1071,138,'2012-12-04','2012-12-04 13:39:28',0)
 ,(1072,127,'2012-12-04','2012-12-04 13:39:43',0)
 ,(1073,136,'2012-12-04','2012-12-04 13:39:46',0)
 ,(1074,136,'2012-12-04','2012-12-04 13:39:47',0)
 ,(1075,136,'2012-12-04','2012-12-04 13:39:47',0)
 ,(1076,136,'2012-12-04','2012-12-04 13:39:49',0)
 ,(1077,127,'2012-12-04','2012-12-04 13:40:12',0)
 ,(1078,137,'2012-12-04','2012-12-04 13:40:19',0)
 ,(1079,127,'2012-12-04','2012-12-04 13:40:27',0)
 ,(1080,137,'2012-12-04','2012-12-04 13:40:29',0)
 ,(1081,127,'2012-12-04','2012-12-04 13:40:36',0)
 ,(1082,136,'2012-12-04','2012-12-04 13:40:39',0)
 ,(1083,127,'2012-12-04','2012-12-04 13:40:49',0)
 ,(1084,137,'2012-12-04','2012-12-04 13:40:51',0)
 ,(1085,127,'2012-12-04','2012-12-04 13:42:37',0)
 ,(1086,127,'2012-12-04','2012-12-04 13:42:41',0)
 ,(1087,127,'2012-12-04','2012-12-04 13:43:17',0)
 ,(1088,127,'2012-12-04','2012-12-04 13:43:41',0)
 ,(1089,127,'2012-12-04','2012-12-04 13:48:44',0)
 ,(1090,137,'2012-12-04','2012-12-04 13:49:02',0)
 ,(1091,127,'2012-12-04','2012-12-04 13:53:03',0)
 ,(1092,127,'2012-12-04','2012-12-04 13:53:24',0)
 ,(1093,127,'2012-12-04','2012-12-04 13:54:41',0)
 ,(1094,137,'2012-12-04','2012-12-04 13:54:47',0)
 ,(1095,127,'2012-12-04','2012-12-04 13:56:33',0)
 ,(1096,137,'2012-12-04','2012-12-04 13:56:35',0)
 ,(1097,127,'2012-12-04','2012-12-04 13:57:30',0)
 ,(1098,127,'2012-12-04','2012-12-04 13:57:55',0)
 ,(1099,127,'2012-12-04','2012-12-04 14:01:55',0)
 ,(1100,127,'2012-12-04','2012-12-04 14:02:45',0)
 ,(1101,137,'2012-12-04','2012-12-04 14:02:48',0)
 ,(1102,138,'2012-12-04','2012-12-04 14:02:55',0)
 ,(1103,138,'2012-12-04','2012-12-04 14:03:06',0)
 ,(1104,137,'2012-12-04','2012-12-04 14:03:17',0)
 ,(1105,127,'2012-12-04','2012-12-04 14:03:52',0)
 ,(1106,138,'2012-12-04','2012-12-04 14:03:55',0)
 ,(1107,138,'2012-12-04','2012-12-04 14:04:04',0)
 ,(1108,138,'2012-12-04','2012-12-04 14:04:05',0)
 ,(1109,138,'2012-12-04','2012-12-04 14:04:23',0)
 ,(1110,138,'2012-12-04','2012-12-04 14:04:23',0)
 ,(1111,138,'2012-12-04','2012-12-04 14:04:24',0)
 ,(1112,138,'2012-12-04','2012-12-04 14:04:25',0)
 ,(1113,138,'2012-12-04','2012-12-04 14:04:26',0)
 ,(1114,137,'2012-12-04','2012-12-04 14:04:31',0)
 ,(1115,137,'2012-12-04','2012-12-04 14:04:32',0)
 ,(1116,137,'2012-12-04','2012-12-04 14:04:33',0)
 ,(1117,137,'2012-12-04','2012-12-04 14:04:34',0)
 ,(1118,137,'2012-12-04','2012-12-04 14:04:35',0)
 ,(1119,137,'2012-12-04','2012-12-04 14:04:36',0)
 ,(1120,137,'2012-12-04','2012-12-04 14:04:36',0)
 ,(1121,137,'2012-12-04','2012-12-04 14:04:37',0)
 ,(1122,127,'2012-12-04','2012-12-04 14:05:42',0)
 ,(1123,127,'2012-12-04','2012-12-04 14:07:34',0)
 ,(1124,136,'2012-12-04','2012-12-04 14:07:50',0)
 ,(1125,137,'2012-12-04','2012-12-04 14:07:52',0)
 ,(1126,138,'2012-12-04','2012-12-04 14:08:13',0)
 ,(1127,127,'2012-12-04','2012-12-04 14:08:31',0)
 ,(1128,137,'2012-12-04','2012-12-04 14:08:33',0)
 ,(1129,127,'2012-12-04','2012-12-04 14:09:04',0)
 ,(1130,127,'2012-12-04','2012-12-04 14:09:44',0)
 ,(1131,137,'2012-12-04','2012-12-04 14:09:46',0)
 ,(1132,127,'2012-12-04','2012-12-04 14:10:56',0)
 ,(1133,136,'2012-12-04','2012-12-04 14:10:59',0)
 ,(1134,127,'2012-12-04','2012-12-04 14:11:07',0)
 ,(1135,138,'2012-12-04','2012-12-04 14:11:09',0)
 ,(1136,127,'2012-12-04','2012-12-04 14:20:44',0)
 ,(1137,137,'2012-12-04','2012-12-04 14:20:46',0)
 ,(1138,137,'2012-12-04','2012-12-04 14:20:49',0)
 ,(1139,137,'2012-12-04','2012-12-04 14:20:51',0)
 ,(1140,137,'2012-12-04','2012-12-04 14:20:52',0)
 ,(1141,137,'2012-12-04','2012-12-04 14:20:53',0)
 ,(1142,137,'2012-12-04','2012-12-04 14:20:54',0)
 ,(1143,137,'2012-12-04','2012-12-04 14:20:54',0)
 ,(1144,137,'2012-12-04','2012-12-04 14:20:55',0)
 ,(1145,137,'2012-12-04','2012-12-04 14:20:55',0)
 ,(1146,137,'2012-12-04','2012-12-04 14:20:56',0)
 ,(1147,137,'2012-12-04','2012-12-04 14:20:56',0)
 ,(1148,137,'2012-12-04','2012-12-04 14:20:56',0)
 ,(1149,137,'2012-12-04','2012-12-04 14:20:57',0)
 ,(1150,137,'2012-12-04','2012-12-04 14:20:57',0)
 ,(1151,137,'2012-12-04','2012-12-04 14:20:58',0)
 ,(1152,137,'2012-12-04','2012-12-04 14:20:58',0)
 ,(1153,137,'2012-12-04','2012-12-04 14:20:58',0)
 ,(1154,137,'2012-12-04','2012-12-04 14:20:59',0)
 ,(1155,137,'2012-12-04','2012-12-04 14:20:59',0)
 ,(1156,137,'2012-12-04','2012-12-04 14:21:00',0)
 ,(1157,137,'2012-12-04','2012-12-04 14:21:00',0)
 ,(1158,137,'2012-12-04','2012-12-04 14:21:01',0)
 ,(1159,137,'2012-12-04','2012-12-04 14:21:01',0)
 ,(1160,137,'2012-12-04','2012-12-04 14:21:02',0)
 ,(1161,127,'2012-12-04','2012-12-04 14:21:24',0)
 ,(1162,136,'2012-12-04','2012-12-04 14:21:27',0)
 ,(1163,136,'2012-12-04','2012-12-04 14:21:28',0)
 ,(1164,136,'2012-12-04','2012-12-04 14:21:29',0)
 ,(1165,136,'2012-12-04','2012-12-04 14:21:30',0)
 ,(1166,127,'2012-12-04','2012-12-04 14:21:51',0)
 ,(1167,137,'2012-12-04','2012-12-04 14:21:54',0)
 ,(1168,138,'2012-12-04','2012-12-04 14:21:56',0)
 ,(1169,138,'2012-12-04','2012-12-04 14:21:58',0)
 ,(1170,127,'2012-12-04','2012-12-04 14:22:37',0)
 ,(1171,137,'2012-12-04','2012-12-04 14:22:40',0)
 ,(1172,137,'2012-12-04','2012-12-04 14:22:42',0)
 ,(1173,127,'2012-12-04','2012-12-04 14:23:07',0)
 ,(1174,138,'2012-12-04','2012-12-04 14:23:10',0)
 ,(1175,138,'2012-12-04','2012-12-04 14:23:11',0)
 ,(1176,138,'2012-12-04','2012-12-04 14:23:13',0)
 ,(1177,138,'2012-12-04','2012-12-04 14:23:13',0)
 ,(1178,127,'2012-12-04','2012-12-04 14:23:21',0)
 ,(1179,136,'2012-12-04','2012-12-04 14:23:24',0)
 ,(1180,127,'2012-12-04','2012-12-04 14:24:03',0)
 ,(1181,138,'2012-12-04','2012-12-04 14:24:06',0)
 ,(1182,127,'2012-12-04','2012-12-04 14:24:08',0)
 ,(1183,127,'2012-12-04','2012-12-04 14:24:13',0)
 ,(1184,138,'2012-12-04','2012-12-04 14:24:16',0)
 ,(1185,138,'2012-12-04','2012-12-04 14:24:17',0)
 ,(1186,138,'2012-12-04','2012-12-04 14:24:19',0)
 ,(1187,138,'2012-12-04','2012-12-04 14:24:20',0)
 ,(1188,138,'2012-12-04','2012-12-04 14:24:21',0)
 ,(1189,138,'2012-12-04','2012-12-04 14:24:24',0)
 ,(1190,138,'2012-12-04','2012-12-04 14:24:26',0)
 ,(1191,138,'2012-12-04','2012-12-04 14:24:28',0)
 ,(1192,138,'2012-12-04','2012-12-04 14:24:29',0)
 ,(1193,138,'2012-12-04','2012-12-04 14:24:30',0)
 ,(1194,138,'2012-12-04','2012-12-04 14:24:31',0)
 ,(1195,138,'2012-12-04','2012-12-04 14:24:32',0)
 ,(1196,138,'2012-12-04','2012-12-04 14:24:33',0)
 ,(1197,138,'2012-12-04','2012-12-04 14:24:34',0)
 ,(1198,138,'2012-12-04','2012-12-04 14:24:35',0)
 ,(1199,138,'2012-12-04','2012-12-04 14:24:36',0)
 ,(1200,138,'2012-12-04','2012-12-04 14:24:37',0)
 ,(1201,138,'2012-12-04','2012-12-04 14:24:37',0)
 ,(1202,138,'2012-12-04','2012-12-04 14:24:37',0)
 ,(1203,138,'2012-12-04','2012-12-04 14:24:38',0)
 ,(1204,138,'2012-12-04','2012-12-04 14:24:38',0)
 ,(1205,138,'2012-12-04','2012-12-04 14:24:38',0)
 ,(1206,138,'2012-12-04','2012-12-04 14:24:39',0)
 ,(1207,138,'2012-12-04','2012-12-04 14:24:39',0)
 ,(1208,138,'2012-12-04','2012-12-04 14:24:40',0)
 ,(1209,138,'2012-12-04','2012-12-04 14:24:40',0)
 ,(1210,138,'2012-12-04','2012-12-04 14:24:40',0)
 ,(1211,138,'2012-12-04','2012-12-04 14:24:41',0)
 ,(1212,138,'2012-12-04','2012-12-04 14:24:41',0)
 ,(1213,138,'2012-12-04','2012-12-04 14:24:42',0)
 ,(1214,138,'2012-12-04','2012-12-04 14:24:42',0)
 ,(1215,138,'2012-12-04','2012-12-04 14:24:42',0)
 ,(1216,138,'2012-12-04','2012-12-04 14:24:43',0)
 ,(1217,138,'2012-12-04','2012-12-04 14:24:43',0)
 ,(1218,127,'2012-12-04','2012-12-04 14:27:34',0)
 ,(1219,136,'2012-12-04','2012-12-04 14:27:36',0)
 ,(1220,136,'2012-12-04','2012-12-04 14:27:36',0)
 ,(1221,136,'2012-12-04','2012-12-04 14:27:38',0)
 ,(1222,136,'2012-12-04','2012-12-04 14:27:38',0)
 ,(1223,136,'2012-12-04','2012-12-04 14:27:39',0)
 ,(1224,136,'2012-12-04','2012-12-04 14:27:41',0)
 ,(1225,136,'2012-12-04','2012-12-04 14:27:41',0)
 ,(1226,136,'2012-12-04','2012-12-04 14:27:42',0)
 ,(1227,136,'2012-12-04','2012-12-04 14:27:43',0)
 ,(1228,136,'2012-12-04','2012-12-04 14:27:43',0)
 ,(1229,136,'2012-12-04','2012-12-04 14:27:45',0)
 ,(1230,136,'2012-12-04','2012-12-04 14:27:45',0)
 ,(1231,136,'2012-12-04','2012-12-04 14:27:46',0)
 ,(1232,136,'2012-12-04','2012-12-04 14:27:47',0)
 ,(1233,127,'2012-12-04','2012-12-04 14:29:03',0)
 ,(1234,136,'2012-12-04','2012-12-04 14:29:05',0)
 ,(1235,136,'2012-12-04','2012-12-04 14:29:06',0)
 ,(1236,127,'2012-12-04','2012-12-04 14:29:11',0)
 ,(1237,136,'2012-12-04','2012-12-04 14:29:14',0)
 ,(1238,136,'2012-12-04','2012-12-04 14:29:15',0)
 ,(1239,138,'2012-12-04','2012-12-04 14:29:16',0)
 ,(1240,138,'2012-12-04','2012-12-04 14:29:17',0)
 ,(1241,127,'2012-12-04','2012-12-04 14:29:40',0)
 ,(1242,138,'2012-12-04','2012-12-04 14:29:42',0)
 ,(1243,138,'2012-12-04','2012-12-04 14:29:43',0)
 ,(1244,138,'2012-12-04','2012-12-04 14:29:44',0)
 ,(1245,138,'2012-12-04','2012-12-04 14:29:47',0)
 ,(1246,138,'2012-12-04','2012-12-04 14:29:48',0)
 ,(1247,127,'2012-12-04','2012-12-04 14:30:03',0)
 ,(1248,138,'2012-12-04','2012-12-04 14:30:05',0)
 ,(1249,138,'2012-12-04','2012-12-04 14:30:06',0)
 ,(1250,127,'2012-12-04','2012-12-04 14:30:15',0)
 ,(1251,138,'2012-12-04','2012-12-04 14:30:17',0)
 ,(1252,138,'2012-12-04','2012-12-04 14:30:18',0)
 ,(1253,127,'2012-12-04','2012-12-04 14:30:24',0)
 ,(1254,127,'2012-12-04','2012-12-04 14:31:22',0)
 ,(1255,127,'2012-12-04','2012-12-04 14:31:57',0)
 ,(1256,127,'2012-12-04','2012-12-04 14:32:10',0)
 ,(1257,127,'2012-12-04','2012-12-04 14:32:31',0)
 ,(1258,138,'2012-12-04','2012-12-04 14:32:33',0)
 ,(1259,136,'2012-12-04','2012-12-04 14:32:36',0)
 ,(1260,137,'2012-12-04','2012-12-04 14:32:39',0)
 ,(1261,137,'2012-12-04','2012-12-04 14:32:40',0)
 ,(1262,138,'2012-12-04','2012-12-04 14:32:42',0)
 ,(1263,136,'2012-12-04','2012-12-04 14:32:46',0)
 ,(1264,137,'2012-12-04','2012-12-04 14:32:47',0)
 ,(1265,138,'2012-12-04','2012-12-04 14:32:49',0)
 ,(1266,127,'2012-12-04','2012-12-04 14:33:02',0)
 ,(1267,136,'2012-12-04','2012-12-04 14:33:05',0)
 ,(1268,137,'2012-12-04','2012-12-04 14:33:06',0)
 ,(1269,127,'2012-12-04','2012-12-04 14:33:37',0)
 ,(1270,136,'2012-12-04','2012-12-04 14:33:40',0)
 ,(1271,127,'2012-12-04','2012-12-04 14:34:11',0)
 ,(1272,136,'2012-12-04','2012-12-04 14:34:13',0)
 ,(1273,127,'2012-12-04','2012-12-04 14:37:15',0)
 ,(1274,136,'2012-12-04','2012-12-04 14:37:17',0)
 ,(1275,136,'2012-12-04','2012-12-04 14:37:19',0)
 ,(1276,127,'2012-12-04','2012-12-04 14:39:01',0)
 ,(1277,137,'2012-12-04','2012-12-04 14:39:04',0)
 ,(1278,127,'2012-12-04','2012-12-04 14:39:15',0)
 ,(1279,137,'2012-12-04','2012-12-04 14:39:18',0)
 ,(1280,137,'2012-12-04','2012-12-04 14:39:19',0)
 ,(1281,127,'2012-12-04','2012-12-04 14:40:24',0)
 ,(1282,137,'2012-12-04','2012-12-04 14:40:27',0)
 ,(1283,127,'2012-12-04','2012-12-04 14:40:59',0)
 ,(1284,138,'2012-12-04','2012-12-04 14:41:01',0)
 ,(1285,138,'2012-12-04','2012-12-04 14:41:03',0)
 ,(1286,136,'2012-12-04','2012-12-04 14:41:05',0)
 ,(1287,137,'2012-12-04','2012-12-04 14:41:08',0)
 ,(1288,138,'2012-12-04','2012-12-04 14:41:11',0)
 ,(1289,127,'2012-12-04','2012-12-04 14:41:57',0)
 ,(1290,138,'2012-12-04','2012-12-04 14:42:00',0)
 ,(1291,127,'2012-12-04','2012-12-04 14:43:59',0)
 ,(1292,138,'2012-12-04','2012-12-04 14:44:01',0)
 ,(1293,138,'2012-12-04','2012-12-04 14:44:03',0)
 ,(1294,137,'2012-12-04','2012-12-04 14:44:37',0)
 ,(1295,138,'2012-12-04','2012-12-04 14:44:41',0)
 ,(1296,136,'2012-12-04','2012-12-04 14:44:42',0)
 ,(1297,136,'2012-12-04','2012-12-04 14:44:44',0)
 ,(1298,127,'2012-12-04','2012-12-04 14:45:23',0)
 ,(1299,136,'2012-12-04','2012-12-04 14:45:27',0)
 ,(1300,127,'2012-12-04','2012-12-04 14:51:35',0)
 ,(1301,127,'2012-12-04','2012-12-04 14:51:37',0)
 ,(1302,137,'2012-12-04','2012-12-04 14:51:39',0)
 ,(1303,127,'2012-12-04','2012-12-04 14:51:49',0)
 ,(1304,137,'2012-12-04','2012-12-04 14:51:51',0)
 ,(1305,127,'2012-12-04','2012-12-04 14:52:11',0)
 ,(1306,137,'2012-12-04','2012-12-04 14:52:13',0)
 ,(1307,137,'2012-12-04','2012-12-04 14:52:14',0)
 ,(1308,137,'2012-12-04','2012-12-04 14:52:15',0)
 ,(1309,127,'2012-12-04','2012-12-04 14:52:30',0)
 ,(1310,138,'2012-12-04','2012-12-04 14:52:32',0)
 ,(1311,127,'2012-12-04','2012-12-04 14:52:37',0)
 ,(1312,137,'2012-12-04','2012-12-04 14:52:40',0)
 ,(1313,127,'2012-12-04','2012-12-04 14:52:50',0)
 ,(1314,138,'2012-12-04','2012-12-04 14:52:52',0)
 ,(1315,138,'2012-12-04','2012-12-04 14:52:53',0)
 ,(1316,127,'2012-12-04','2012-12-04 14:53:08',0)
 ,(1317,137,'2012-12-04','2012-12-04 14:53:10',0)
 ,(1318,127,'2012-12-04','2012-12-04 14:53:22',0)
 ,(1319,127,'2012-12-04','2012-12-04 14:53:33',0)
 ,(1320,136,'2012-12-04','2012-12-04 14:53:35',0)
 ,(1321,136,'2012-12-04','2012-12-04 14:53:36',0)
 ,(1322,138,'2012-12-04','2012-12-04 14:53:44',0)
 ,(1323,138,'2012-12-04','2012-12-04 14:53:46',0)
 ,(1324,127,'2012-12-04','2012-12-04 14:54:04',0)
 ,(1325,138,'2012-12-04','2012-12-04 14:54:06',0)
 ,(1326,138,'2012-12-04','2012-12-04 14:54:08',0)
 ,(1327,127,'2012-12-04','2012-12-04 14:54:46',0)
 ,(1328,138,'2012-12-04','2012-12-04 14:54:49',0)
 ,(1329,127,'2012-12-04','2012-12-04 14:54:58',0)
 ,(1330,136,'2012-12-04','2012-12-04 14:55:00',0)
 ,(1331,127,'2012-12-04','2012-12-04 14:55:14',0)
 ,(1332,137,'2012-12-04','2012-12-04 14:55:16',0)
 ,(1333,137,'2012-12-04','2012-12-04 14:55:18',0)
 ,(1334,127,'2012-12-04','2012-12-04 14:55:41',0)
 ,(1335,138,'2012-12-04','2012-12-04 14:55:43',0)
 ,(1336,136,'2012-12-04','2012-12-04 14:55:47',0)
 ,(1337,127,'2012-12-04','2012-12-04 14:56:06',0)
 ,(1338,137,'2012-12-04','2012-12-04 14:56:08',0)
 ,(1339,127,'2012-12-04','2012-12-04 14:56:16',0)
 ,(1340,137,'2012-12-04','2012-12-04 14:56:18',0)
 ,(1341,138,'2012-12-04','2012-12-04 14:56:19',0)
 ,(1342,136,'2012-12-04','2012-12-04 14:56:21',0)
 ,(1343,136,'2012-12-04','2012-12-04 14:56:23',0)
 ,(1344,127,'2012-12-04','2012-12-04 14:56:46',0)
 ,(1345,137,'2012-12-04','2012-12-04 14:56:48',0)
 ,(1346,137,'2012-12-04','2012-12-04 14:56:50',0)
 ,(1347,138,'2012-12-04','2012-12-04 14:56:52',0)
 ,(1348,136,'2012-12-04','2012-12-04 14:56:54',0)
 ,(1349,137,'2012-12-04','2012-12-04 14:56:55',0)
 ,(1350,136,'2012-12-04','2012-12-04 14:56:57',0)
 ,(1351,138,'2012-12-04','2012-12-04 14:56:58',0)
 ,(1352,137,'2012-12-04','2012-12-04 14:56:59',0)
 ,(1353,138,'2012-12-04','2012-12-04 14:57:00',0)
 ,(1354,136,'2012-12-04','2012-12-04 14:57:01',0)
 ,(1355,136,'2012-12-04','2012-12-04 14:57:03',0)
 ,(1356,127,'2012-12-04','2012-12-04 14:57:18',0)
 ,(1357,137,'2012-12-04','2012-12-04 14:57:21',0)
 ,(1358,137,'2012-12-04','2012-12-04 14:57:22',0)
 ,(1359,127,'2012-12-04','2012-12-04 15:09:11',0)
 ,(1360,138,'2012-12-04','2012-12-04 15:09:13',0)
 ,(1361,127,'2012-12-04','2012-12-04 15:10:13',0)
 ,(1362,138,'2012-12-04','2012-12-04 15:10:16',0)
 ,(1363,127,'2012-12-04','2012-12-04 15:10:54',0)
 ,(1364,138,'2012-12-04','2012-12-04 15:10:57',0)
 ,(1365,127,'2012-12-04','2012-12-04 15:11:27',0)
 ,(1366,138,'2012-12-04','2012-12-04 15:11:29',0)
 ,(1367,127,'2012-12-04','2012-12-04 15:12:00',0)
 ,(1368,138,'2012-12-04','2012-12-04 15:12:03',0)
 ,(1369,127,'2012-12-04','2012-12-04 15:12:37',0)
 ,(1370,138,'2012-12-04','2012-12-04 15:12:39',0)
 ,(1371,127,'2012-12-04','2012-12-04 15:14:06',0)
 ,(1372,137,'2012-12-04','2012-12-04 15:14:09',0)
 ,(1373,137,'2012-12-04','2012-12-04 15:14:10',0)
 ,(1374,127,'2012-12-04','2012-12-04 15:14:11',0)
 ,(1375,127,'2012-12-04','2012-12-04 15:14:11',0)
 ,(1376,127,'2012-12-04','2012-12-04 15:14:12',0)
 ,(1377,127,'2012-12-04','2012-12-04 15:14:12',0)
 ,(1378,127,'2012-12-04','2012-12-04 15:14:14',0)
 ,(1379,137,'2012-12-04','2012-12-04 15:14:16',0)
 ,(1380,127,'2012-12-04','2012-12-04 15:15:01',0)
 ,(1381,127,'2012-12-04','2012-12-04 15:15:09',0)
 ,(1382,137,'2012-12-04','2012-12-04 15:15:11',0)
 ,(1383,137,'2012-12-04','2012-12-04 15:15:12',0)
 ,(1384,137,'2012-12-04','2012-12-04 15:15:13',0)
 ,(1385,138,'2012-12-04','2012-12-04 15:17:44',0)
 ,(1386,136,'2012-12-04','2012-12-04 15:17:46',0)
 ,(1387,138,'2012-12-04','2012-12-04 15:17:47',0)
 ,(1388,138,'2012-12-04','2012-12-04 15:17:49',0)
 ,(1389,127,'2012-12-04','2012-12-04 15:18:45',0)
 ,(1390,138,'2012-12-04','2012-12-04 15:18:47',0)
 ,(1391,127,'2012-12-04','2012-12-04 15:18:49',0)
 ,(1392,138,'2012-12-04','2012-12-04 15:18:52',0)
 ,(1393,136,'2012-12-04','2012-12-04 15:18:54',0)
 ,(1394,127,'2012-12-04','2012-12-04 15:19:11',0)
 ,(1395,136,'2012-12-04','2012-12-04 15:19:14',0)
 ,(1396,137,'2012-12-04','2012-12-04 15:19:16',0)
 ,(1397,138,'2012-12-04','2012-12-04 15:19:18',0)
 ,(1398,136,'2012-12-04','2012-12-04 15:19:19',0)
 ,(1399,137,'2012-12-04','2012-12-04 15:19:20',0)
 ,(1400,137,'2012-12-04','2012-12-04 15:19:23',0)
 ,(1401,137,'2012-12-04','2012-12-04 15:19:25',0)
 ,(1402,137,'2012-12-04','2012-12-04 15:19:26',0)
 ,(1403,137,'2012-12-04','2012-12-04 15:19:26',0)
 ,(1404,138,'2012-12-04','2012-12-04 15:19:27',0)
 ,(1405,138,'2012-12-04','2012-12-04 15:19:31',0)
 ,(1406,127,'2012-12-04','2012-12-04 15:20:42',0)
 ,(1407,137,'2012-12-04','2012-12-04 15:20:45',0)
 ,(1408,127,'2012-12-04','2012-12-04 15:20:55',0)
 ,(1409,138,'2012-12-04','2012-12-04 15:20:57',0)
 ,(1410,127,'2012-12-04','2012-12-04 15:21:17',0)
 ,(1411,127,'2012-12-04','2012-12-04 15:21:34',0)
 ,(1412,138,'2012-12-04','2012-12-04 15:21:36',0)
 ,(1413,127,'2012-12-04','2012-12-04 15:22:00',0)
 ,(1414,127,'2012-12-04','2012-12-04 15:22:38',0)
 ,(1415,127,'2012-12-04','2012-12-04 15:23:46',0)
 ,(1416,138,'2012-12-04','2012-12-04 15:23:48',0)
 ,(1417,127,'2012-12-04','2012-12-04 15:23:52',0)
 ,(1418,127,'2012-12-04','2012-12-04 15:24:08',0)
 ,(1419,138,'2012-12-04','2012-12-04 15:24:10',0)
 ,(1420,138,'2012-12-04','2012-12-04 15:24:13',0)
 ,(1421,138,'2012-12-04','2012-12-04 15:24:17',0)
 ,(1422,138,'2012-12-04','2012-12-04 15:24:23',0)
 ,(1423,127,'2012-12-04','2012-12-04 15:25:06',0)
 ,(1424,138,'2012-12-04','2012-12-04 15:25:09',0)
 ,(1425,138,'2012-12-04','2012-12-04 15:25:10',0)
 ,(1426,127,'2012-12-04','2012-12-04 15:25:18',0)
 ,(1427,137,'2012-12-04','2012-12-04 15:25:20',0)
 ,(1428,138,'2012-12-04','2012-12-04 15:25:22',0)
 ,(1429,136,'2012-12-04','2012-12-04 15:25:23',0)
 ,(1430,137,'2012-12-04','2012-12-04 15:25:25',0)
 ,(1431,127,'2012-12-04','2012-12-04 15:25:42',0)
 ,(1432,127,'2012-12-04','2012-12-04 15:25:44',0)
 ,(1433,137,'2012-12-04','2012-12-04 15:25:46',0)
 ,(1434,127,'2012-12-04','2012-12-04 15:26:01',0)
 ,(1435,137,'2012-12-04','2012-12-04 15:26:03',0)
 ,(1436,127,'2012-12-04','2012-12-04 15:26:16',0)
 ,(1437,137,'2012-12-04','2012-12-04 15:26:18',0)
 ,(1438,137,'2012-12-04','2012-12-04 15:26:23',0)
 ,(1439,137,'2012-12-04','2012-12-04 15:26:24',0)
 ,(1440,127,'2012-12-04','2012-12-04 15:26:26',0)
 ,(1441,127,'2012-12-04','2012-12-04 15:26:56',0)
 ,(1442,127,'2012-12-04','2012-12-04 15:28:32',0)
 ,(1443,127,'2012-12-04','2012-12-04 15:32:08',0)
 ,(1444,1,'2012-12-04','2012-12-04 15:32:39',0)
 ,(1445,127,'2012-12-04','2012-12-04 15:32:45',0)
 ,(1446,123,'2012-12-04','2012-12-04 15:32:47',0)
 ,(1447,127,'2012-12-04','2012-12-04 15:32:49',0)
 ,(1448,127,'2012-12-04','2012-12-04 15:32:52',0)
 ,(1449,127,'2012-12-04','2012-12-04 15:32:52',0)
 ,(1450,1,'2012-12-04','2012-12-04 15:32:54',0)
 ,(1451,127,'2012-12-04','2012-12-04 15:32:57',0)
 ,(1452,127,'2012-12-04','2012-12-04 15:37:20',0)
 ,(1453,127,'2012-12-04','2012-12-04 15:39:24',0)
 ,(1454,127,'2012-12-04','2012-12-04 15:39:44',0)
 ,(1455,127,'2012-12-04','2012-12-04 15:40:41',0)
 ,(1456,127,'2012-12-04','2012-12-04 15:41:49',0)
 ,(1457,127,'2012-12-04','2012-12-04 15:41:59',0)
 ,(1458,127,'2012-12-04','2012-12-04 15:42:15',0)
 ,(1459,127,'2012-12-04','2012-12-04 15:42:57',0)
 ,(1460,127,'2012-12-04','2012-12-04 15:43:26',0)
 ,(1461,127,'2012-12-04','2012-12-04 15:43:28',0)
 ,(1462,136,'2012-12-04','2012-12-04 15:43:31',0)
 ,(1463,127,'2012-12-04','2012-12-04 15:44:00',0)
 ,(1464,138,'2012-12-04','2012-12-04 15:44:02',0)
 ,(1465,127,'2012-12-04','2012-12-04 15:44:42',0)
 ,(1466,137,'2012-12-04','2012-12-04 15:44:44',0)
 ,(1467,138,'2012-12-04','2012-12-04 15:44:52',0)
 ,(1468,138,'2012-12-04','2012-12-04 15:44:53',0)
 ,(1469,138,'2012-12-04','2012-12-04 15:44:54',0)
 ,(1470,137,'2012-12-04','2012-12-04 15:44:57',0)
 ,(1471,137,'2012-12-04','2012-12-04 15:45:03',0)
 ,(1472,136,'2012-12-04','2012-12-04 15:45:04',0)
 ,(1473,136,'2012-12-04','2012-12-04 15:45:08',0)
 ,(1474,123,'2012-12-04','2012-12-04 15:45:25',0)
 ,(1475,1,'2012-12-04','2012-12-04 15:45:28',0)
 ,(1476,127,'2012-12-04','2012-12-04 15:45:30',0)
 ,(1477,123,'2012-12-04','2012-12-04 15:45:32',0)
 ,(1478,127,'2012-12-04','2012-12-04 15:45:34',0)
 ,(1479,136,'2012-12-04','2012-12-04 15:45:36',0)
 ,(1480,136,'2012-12-04','2012-12-04 15:45:38',0)
 ,(1481,136,'2012-12-04','2012-12-04 15:45:41',0)
 ,(1482,127,'2012-12-04','2012-12-04 15:45:49',0)
 ,(1483,136,'2012-12-04','2012-12-04 15:45:51',0)
 ,(1484,137,'2012-12-04','2012-12-04 15:45:56',0)
 ,(1485,127,'2012-12-04','2012-12-04 15:47:09',0)
 ,(1486,1,'2012-12-07','2012-12-07 13:36:39',0)
 ,(1487,1,'2012-12-07','2012-12-07 13:46:32',0)
 ,(1488,1,'2012-12-07','2012-12-07 13:46:34',0)
 ,(1489,1,'2012-12-07','2012-12-07 13:47:51',0)
 ,(1490,1,'2012-12-07','2012-12-07 13:47:52',0)
 ,(1491,1,'2012-12-07','2012-12-07 13:47:53',0)
 ,(1492,1,'2012-12-07','2012-12-07 13:47:53',0)
 ,(1493,1,'2012-12-07','2012-12-07 13:47:53',0)
 ,(1494,1,'2012-12-07','2012-12-07 13:47:54',0)
 ,(1495,1,'2012-12-07','2012-12-07 13:47:54',0)
 ,(1496,1,'2012-12-07','2012-12-07 13:47:55',0)
 ,(1497,1,'2012-12-07','2012-12-07 13:48:34',0)
 ,(1498,1,'2012-12-07','2012-12-07 13:48:37',0)
 ,(1499,1,'2012-12-07','2012-12-07 13:48:41',0)
 ,(1500,1,'2012-12-07','2012-12-07 13:48:44',0)
 ,(1501,1,'2012-12-07','2012-12-07 13:48:48',0)
 ,(1502,1,'2012-12-07','2012-12-07 13:49:26',0)
 ,(1503,1,'2012-12-07','2012-12-07 13:49:32',0)
 ,(1504,127,'2012-12-07','2012-12-07 13:49:36',0)
 ,(1505,127,'2012-12-07','2012-12-07 13:58:53',0)
 ,(1506,127,'2012-12-07','2012-12-07 13:59:25',0)
 ,(1507,127,'2012-12-07','2012-12-07 13:59:55',0)
 ,(1508,127,'2012-12-07','2012-12-07 14:00:25',0)
 ,(1509,127,'2012-12-07','2012-12-07 14:00:38',0)
 ,(1510,127,'2012-12-07','2012-12-07 14:01:41',0)
 ,(1511,127,'2012-12-07','2012-12-07 14:01:51',0)
 ,(1512,127,'2012-12-07','2012-12-07 14:02:05',0)
 ,(1513,127,'2012-12-07','2012-12-07 14:02:38',0)
 ,(1514,138,'2012-12-07','2012-12-07 14:02:48',0)
 ,(1515,138,'2012-12-07','2012-12-07 14:02:50',0)
 ,(1516,136,'2012-12-07','2012-12-07 14:03:33',0)
 ,(1517,127,'2012-12-07','2012-12-07 14:03:39',0)
 ,(1518,136,'2012-12-07','2012-12-07 14:03:43',0)
 ,(1519,127,'2012-12-07','2012-12-07 14:04:06',0)
 ,(1520,137,'2012-12-07','2012-12-07 14:04:08',0)
 ,(1521,127,'2012-12-07','2012-12-07 14:04:23',0)
 ,(1522,136,'2012-12-07','2012-12-07 14:04:26',0)
 ,(1523,127,'2012-12-07','2012-12-07 14:04:38',0)
 ,(1524,137,'2012-12-07','2012-12-07 14:04:40',0)
 ,(1525,127,'2012-12-07','2012-12-07 14:04:50',0)
 ,(1526,137,'2012-12-07','2012-12-07 14:04:52',0)
 ,(1527,127,'2012-12-07','2012-12-07 14:05:04',0)
 ,(1528,137,'2012-12-07','2012-12-07 14:05:06',0)
 ,(1529,138,'2012-12-07','2012-12-07 14:05:10',0)
 ,(1530,136,'2012-12-07','2012-12-07 14:05:12',0)
 ,(1531,136,'2012-12-07','2012-12-07 14:05:13',0)
 ,(1532,137,'2012-12-07','2012-12-07 14:05:14',0)
 ,(1533,137,'2012-12-07','2012-12-07 14:05:16',0)
 ,(1534,136,'2012-12-07','2012-12-07 14:05:20',0)
 ,(1535,137,'2012-12-07','2012-12-07 14:05:21',0)
 ,(1536,138,'2012-12-07','2012-12-07 14:05:22',0)
 ,(1537,136,'2012-12-07','2012-12-07 14:05:24',0)
 ,(1538,136,'2012-12-07','2012-12-07 14:05:25',0)
 ,(1539,136,'2012-12-07','2012-12-07 14:05:27',0)
 ,(1540,127,'2012-12-07','2012-12-07 14:06:07',0)
 ,(1541,136,'2012-12-07','2012-12-07 14:06:09',0)
 ,(1542,127,'2012-12-07','2012-12-07 14:06:35',0)
 ,(1543,138,'2012-12-07','2012-12-07 14:06:39',0)
 ,(1544,136,'2012-12-07','2012-12-07 14:06:41',0)
 ,(1545,138,'2012-12-07','2012-12-07 14:06:43',0)
 ,(1546,127,'2012-12-07','2012-12-07 14:07:10',0)
 ,(1547,127,'2012-12-07','2012-12-07 14:07:20',0)
 ,(1548,136,'2012-12-07','2012-12-07 14:07:23',0)
 ,(1549,127,'2012-12-07','2012-12-07 14:07:39',0)
 ,(1550,127,'2012-12-07','2012-12-07 14:07:53',0)
 ,(1551,127,'2012-12-07','2012-12-07 14:08:44',0)
 ,(1552,138,'2012-12-07','2012-12-07 14:08:49',0)
 ,(1553,127,'2012-12-07','2012-12-07 14:09:11',0)
 ,(1554,137,'2012-12-07','2012-12-07 14:09:13',0)
 ,(1555,138,'2012-12-07','2012-12-07 14:09:24',0)
 ,(1556,138,'2012-12-07','2012-12-07 14:09:36',0)
 ,(1557,138,'2012-12-07','2012-12-07 14:09:37',0)
 ,(1558,137,'2012-12-07','2012-12-07 14:09:41',0)
 ,(1559,136,'2012-12-07','2012-12-07 14:09:42',0)
 ,(1560,136,'2012-12-07','2012-12-07 14:09:45',0)
 ,(1561,127,'2012-12-07','2012-12-07 14:09:55',0)
 ,(1562,138,'2012-12-07','2012-12-07 14:09:57',0)
 ,(1563,138,'2012-12-07','2012-12-07 14:09:58',0)
 ,(1564,137,'2012-12-07','2012-12-07 14:10:03',0)
 ,(1565,138,'2012-12-07','2012-12-07 14:10:07',0)
 ,(1566,136,'2012-12-07','2012-12-07 14:10:09',0)
 ,(1567,137,'2012-12-07','2012-12-07 14:10:11',0)
 ,(1568,137,'2012-12-07','2012-12-07 14:10:12',0)
 ,(1569,137,'2012-12-07','2012-12-07 14:10:13',0)
 ,(1570,137,'2012-12-07','2012-12-07 14:10:15',0)
 ,(1571,127,'2012-12-07','2012-12-07 14:10:48',0)
 ,(1572,127,'2012-12-07','2012-12-07 14:11:02',0)
 ,(1573,127,'2012-12-07','2012-12-07 14:11:39',0)
 ,(1574,127,'2012-12-07','2012-12-07 14:11:47',0)
 ,(1575,137,'2012-12-07','2012-12-07 14:11:51',0)
 ,(1576,136,'2012-12-07','2012-12-07 14:11:53',0)
 ,(1577,138,'2012-12-07','2012-12-07 14:11:54',0)
 ,(1578,138,'2012-12-07','2012-12-07 14:11:55',0)
 ,(1579,138,'2012-12-07','2012-12-07 14:11:56',0)
 ,(1580,138,'2012-12-07','2012-12-07 14:11:57',0)
 ,(1581,136,'2012-12-07','2012-12-07 14:11:58',0)
 ,(1582,136,'2012-12-07','2012-12-07 14:11:58',0)
 ,(1583,137,'2012-12-07','2012-12-07 14:11:59',0)
 ,(1584,137,'2012-12-07','2012-12-07 14:12:00',0)
 ,(1585,136,'2012-12-07','2012-12-07 14:12:02',0)
 ,(1586,137,'2012-12-07','2012-12-07 14:12:03',0)
 ,(1587,138,'2012-12-07','2012-12-07 14:12:05',0)
 ,(1588,136,'2012-12-07','2012-12-07 14:12:06',0)
 ,(1589,127,'2012-12-07','2012-12-07 14:12:31',0)
 ,(1590,137,'2012-12-07','2012-12-07 14:14:09',0)
 ,(1591,136,'2012-12-07','2012-12-07 14:14:13',0)
 ,(1592,138,'2012-12-07','2012-12-07 14:14:16',0)
 ,(1593,137,'2012-12-07','2012-12-07 14:14:19',0)
 ,(1594,137,'2012-12-07','2012-12-07 14:14:38',0)
 ,(1595,127,'2012-12-07','2012-12-07 14:14:54',0)
 ,(1596,138,'2012-12-07','2012-12-07 14:14:56',0)
 ,(1597,137,'2012-12-07','2012-12-07 14:15:02',0)
 ,(1598,127,'2012-12-07','2012-12-07 14:15:43',0)
 ,(1599,137,'2012-12-07','2012-12-07 14:15:45',0)
 ,(1600,127,'2012-12-07','2012-12-07 14:15:49',0)
 ,(1601,138,'2012-12-07','2012-12-07 14:15:50',0)
 ,(1602,127,'2012-12-07','2012-12-07 14:16:28',0)
 ,(1603,127,'2012-12-07','2012-12-07 14:16:29',0)
 ,(1604,127,'2012-12-07','2012-12-07 14:16:29',0)
 ,(1605,127,'2012-12-07','2012-12-07 14:16:32',0)
 ,(1606,136,'2012-12-07','2012-12-07 14:16:38',0)
 ,(1607,136,'2012-12-07','2012-12-07 14:16:44',0)
 ,(1608,127,'2012-12-07','2012-12-07 14:19:10',0)
 ,(1609,138,'2012-12-07','2012-12-07 14:19:12',0)
 ,(1610,138,'2012-12-07','2012-12-07 14:19:19',0)
 ,(1611,127,'2012-12-07','2012-12-07 14:23:09',0)
 ,(1612,1,'2012-12-07','2012-12-07 14:23:11',0)
 ,(1613,127,'2012-12-07','2012-12-07 14:23:13',0)
 ,(1614,136,'2012-12-07','2012-12-07 14:45:14',0)
 ,(1615,137,'2012-12-07','2012-12-07 14:45:15',0)
 ,(1616,136,'2012-12-07','2012-12-07 14:45:16',0)
 ,(1617,137,'2012-12-07','2012-12-07 14:45:18',0)
 ,(1618,136,'2012-12-07','2012-12-07 14:45:20',0)
 ,(1619,138,'2012-12-07','2012-12-07 14:45:21',0)
 ,(1620,137,'2012-12-07','2012-12-07 14:45:24',0)
 ,(1621,138,'2012-12-07','2012-12-07 14:45:32',0)
 ,(1622,138,'2012-12-07','2012-12-07 14:45:33',0)
 ,(1623,136,'2012-12-07','2012-12-07 14:45:36',0)
 ,(1624,138,'2012-12-07','2012-12-07 14:45:42',0)
 ,(1625,127,'2012-12-07','2012-12-07 14:46:10',0)
 ,(1626,136,'2012-12-07','2012-12-07 14:47:30',0)
 ,(1627,127,'2012-12-07','2012-12-07 14:47:34',0)
 ,(1628,136,'2012-12-07','2012-12-07 14:47:52',0)
 ,(1629,127,'2012-12-07','2012-12-07 14:48:10',0)
 ,(1630,136,'2012-12-07','2012-12-07 14:48:15',0)
 ,(1631,127,'2012-12-07','2012-12-07 15:04:44',0)
 ,(1632,127,'2012-12-07','2012-12-07 15:05:01',0)
 ,(1633,136,'2012-12-07','2012-12-07 15:05:04',0)
 ,(1634,127,'2012-12-07','2012-12-07 15:05:06',0)
 ,(1635,127,'2012-12-07','2012-12-07 15:05:08',0)
 ,(1636,127,'2012-12-07','2012-12-07 15:05:25',0)
 ,(1637,138,'2012-12-07','2012-12-07 15:05:28',0)
 ,(1638,127,'2012-12-07','2012-12-07 15:05:31',0)
 ,(1639,127,'2012-12-07','2012-12-07 15:06:02',0)
 ,(1640,137,'2012-12-07','2012-12-07 15:06:05',0)
 ,(1641,127,'2012-12-07','2012-12-07 15:06:08',0)
 ,(1642,127,'2012-12-07','2012-12-07 15:06:18',0)
 ,(1643,137,'2012-12-07','2012-12-07 15:06:21',0)
 ,(1644,127,'2012-12-07','2012-12-07 15:06:23',0)
 ,(1645,127,'2012-12-07','2012-12-07 15:06:38',0)
 ,(1646,127,'2012-12-07','2012-12-07 15:06:47',0)
 ,(1647,137,'2012-12-07','2012-12-07 15:06:49',0)
 ,(1648,137,'2012-12-07','2012-12-07 15:07:00',0)
 ,(1649,127,'2012-12-07','2012-12-07 15:07:03',0)
 ,(1650,127,'2012-12-07','2012-12-07 15:07:13',0)
 ,(1651,127,'2012-12-07','2012-12-07 15:07:28',0)
 ,(1652,127,'2012-12-07','2012-12-07 15:08:27',0)
 ,(1653,127,'2012-12-07','2012-12-07 15:08:41',0)
 ,(1654,127,'2012-12-07','2012-12-07 15:08:54',0)
 ,(1655,127,'2012-12-07','2012-12-07 15:12:01',0)
 ,(1656,127,'2012-12-07','2012-12-07 15:12:03',0)
 ,(1657,127,'2012-12-07','2012-12-07 15:12:46',0)
 ,(1658,137,'2012-12-07','2012-12-07 15:12:48',0)
 ,(1659,127,'2012-12-07','2012-12-07 15:12:51',0)
 ,(1660,136,'2012-12-07','2012-12-07 15:12:53',0)
 ,(1661,136,'2012-12-07','2012-12-07 15:12:59',0)
 ,(1662,127,'2012-12-07','2012-12-07 15:13:01',0)
 ,(1663,137,'2012-12-07','2012-12-07 15:13:03',0)
 ,(1664,127,'2012-12-07','2012-12-07 15:13:09',0)
 ,(1665,137,'2012-12-07','2012-12-07 15:13:09',0)
 ,(1666,137,'2012-12-07','2012-12-07 15:13:10',0)
 ,(1667,137,'2012-12-07','2012-12-07 15:13:10',0)
 ,(1668,137,'2012-12-07','2012-12-07 15:13:11',0)
 ,(1669,137,'2012-12-07','2012-12-07 15:13:11',0)
 ,(1670,137,'2012-12-07','2012-12-07 15:13:12',0)
 ,(1671,137,'2012-12-07','2012-12-07 15:13:12',0)
 ,(1672,137,'2012-12-07','2012-12-07 15:13:13',0)
 ,(1673,137,'2012-12-07','2012-12-07 15:13:13',0)
 ,(1674,137,'2012-12-07','2012-12-07 15:13:14',0)
 ,(1675,127,'2012-12-07','2012-12-07 15:13:14',0)
 ,(1676,127,'2012-12-07','2012-12-07 15:13:16',0)
 ,(1677,127,'2012-12-07','2012-12-07 15:15:25',0)
 ,(1678,138,'2012-12-07','2012-12-07 15:15:27',0)
 ,(1679,127,'2012-12-07','2012-12-07 15:15:36',0)
 ,(1680,136,'2012-12-07','2012-12-07 15:15:39',0)
 ,(1681,127,'2012-12-07','2012-12-07 15:15:46',0)
 ,(1682,136,'2012-12-07','2012-12-07 15:15:48',0)
 ,(1683,127,'2012-12-07','2012-12-07 15:17:24',0)
 ,(1684,136,'2012-12-07','2012-12-07 15:17:27',0)
 ,(1685,127,'2012-12-07','2012-12-07 15:17:30',0)
 ,(1686,127,'2012-12-07','2012-12-07 15:17:53',0)
 ,(1687,137,'2012-12-07','2012-12-07 15:17:55',0)
 ,(1688,127,'2012-12-07','2012-12-07 15:18:06',0)
 ,(1689,138,'2012-12-07','2012-12-07 15:18:08',0)
 ,(1690,136,'2012-12-07','2012-12-07 15:18:08',0)
 ,(1691,136,'2012-12-07','2012-12-07 15:18:17',0)
 ,(1692,127,'2012-12-07','2012-12-07 15:18:20',0)
 ,(1693,137,'2012-12-07','2012-12-07 15:18:22',0)
 ,(1694,127,'2012-12-07','2012-12-07 15:18:27',0)
 ,(1695,127,'2012-12-07','2012-12-07 15:18:28',0)
 ,(1696,127,'2012-12-07','2012-12-07 15:21:03',0)
 ,(1697,127,'2012-12-07','2012-12-07 15:22:24',0)
 ,(1698,127,'2012-12-07','2012-12-07 15:22:41',0)
 ,(1699,127,'2012-12-07','2012-12-07 15:23:03',0)
 ,(1700,127,'2012-12-07','2012-12-07 15:23:15',0)
 ,(1701,127,'2012-12-07','2012-12-07 15:23:32',0)
 ,(1702,137,'2012-12-07','2012-12-07 15:23:34',0)
 ,(1703,127,'2012-12-07','2012-12-07 15:23:37',0)
 ,(1704,127,'2012-12-07','2012-12-07 15:23:50',0)
 ,(1705,127,'2012-12-07','2012-12-07 15:23:53',0)
 ,(1706,127,'2012-12-07','2012-12-07 15:24:08',0)
 ,(1707,127,'2012-12-07','2012-12-07 15:24:08',0)
 ,(1708,137,'2012-12-07','2012-12-07 15:24:10',0)
 ,(1709,127,'2012-12-07','2012-12-07 15:24:27',0)
 ,(1710,127,'2012-12-07','2012-12-07 15:24:33',0)
 ,(1711,1,'2012-12-07','2012-12-07 15:24:36',0)
 ,(1712,127,'2012-12-07','2012-12-07 15:24:36',0)
 ,(1713,137,'2012-12-07','2012-12-07 15:24:40',0)
 ,(1714,127,'2012-12-07','2012-12-07 15:24:43',0)
 ,(1715,136,'2012-12-07','2012-12-07 15:24:46',0)
 ,(1716,127,'2012-12-07','2012-12-07 15:25:30',0)
 ,(1717,138,'2012-12-07','2012-12-07 15:25:33',0)
 ,(1718,136,'2012-12-07','2012-12-07 15:45:04',0)
 ,(1719,127,'2012-12-07','2012-12-07 15:45:24',0)
 ,(1720,136,'2012-12-07','2012-12-07 15:45:26',0)
 ,(1721,127,'2012-12-07','2012-12-07 15:45:38',0)
 ,(1722,137,'2012-12-07','2012-12-07 15:45:41',0)
 ,(1723,127,'2012-12-07','2012-12-07 15:45:53',0)
 ,(1724,127,'2012-12-07','2012-12-07 15:46:00',0)
 ,(1725,137,'2012-12-07','2012-12-07 15:46:03',0)
 ,(1726,127,'2012-12-07','2012-12-07 15:46:13',0)
 ,(1727,136,'2012-12-07','2012-12-07 15:46:15',0)
 ,(1728,127,'2012-12-07','2012-12-07 15:46:54',0)
 ,(1729,137,'2012-12-07','2012-12-07 15:46:57',0)
 ,(1730,127,'2012-12-07','2012-12-07 15:49:01',0)
 ,(1731,137,'2012-12-07','2012-12-07 15:49:03',0)
 ,(1732,127,'2012-12-07','2012-12-07 15:49:17',0)
 ,(1733,127,'2012-12-07','2012-12-07 15:49:27',0)
 ,(1734,137,'2012-12-07','2012-12-07 15:49:30',0)
 ,(1735,127,'2012-12-07','2012-12-07 15:49:39',0)
 ,(1736,136,'2012-12-07','2012-12-07 15:49:41',0)
 ,(1737,127,'2012-12-07','2012-12-07 15:50:33',0)
 ,(1738,136,'2012-12-07','2012-12-07 15:50:35',0)
 ,(1739,136,'2012-12-07','2012-12-07 15:52:34',0)
 ,(1740,127,'2012-12-07','2012-12-07 15:52:38',0)
 ,(1741,136,'2012-12-07','2012-12-07 15:52:40',0)
 ,(1742,127,'2012-12-07','2012-12-07 15:53:20',0)
 ,(1743,138,'2012-12-07','2012-12-07 15:53:22',0)
 ,(1744,127,'2012-12-07','2012-12-07 15:53:49',0)
 ,(1745,137,'2012-12-07','2012-12-07 15:53:51',0)
 ,(1746,127,'2012-12-07','2012-12-07 15:54:36',0)
 ,(1747,137,'2012-12-07','2012-12-07 15:54:39',0)
 ,(1748,127,'2012-12-07','2012-12-07 15:55:14',0)
 ,(1749,137,'2012-12-07','2012-12-07 15:55:16',0)
 ,(1750,127,'2012-12-07','2012-12-07 15:55:38',0)
 ,(1751,138,'2012-12-07','2012-12-07 15:55:40',0)
 ,(1752,127,'2012-12-07','2012-12-07 15:56:03',0)
 ,(1753,136,'2012-12-07','2012-12-07 15:56:05',0)
 ,(1754,127,'2012-12-07','2012-12-07 15:56:33',0)
 ,(1755,136,'2012-12-07','2012-12-07 15:56:35',0)
 ,(1756,137,'2012-12-07','2012-12-07 15:56:37',0)
 ,(1757,138,'2012-12-07','2012-12-07 15:56:45',0)
 ,(1758,127,'2012-12-07','2012-12-07 15:57:26',0)
 ,(1759,137,'2012-12-07','2012-12-07 15:57:28',0)
 ,(1760,127,'2012-12-07','2012-12-07 15:58:09',0)
 ,(1761,136,'2012-12-07','2012-12-07 15:58:12',0)
 ,(1762,127,'2012-12-07','2012-12-07 15:59:38',0)
 ,(1763,138,'2012-12-07','2012-12-07 15:59:50',0)
 ,(1764,136,'2012-12-07','2012-12-07 15:59:52',0)
 ,(1765,127,'2012-12-07','2012-12-07 15:59:59',0)
 ,(1766,136,'2012-12-07','2012-12-07 16:00:01',0)
 ,(1767,138,'2012-12-07','2012-12-07 16:00:02',0)
 ,(1768,127,'2012-12-07','2012-12-07 16:01:02',0)
 ,(1769,136,'2012-12-07','2012-12-07 16:01:04',0)
 ,(1770,137,'2012-12-07','2012-12-07 16:01:10',0)
 ,(1771,138,'2012-12-07','2012-12-07 16:01:19',0)
 ,(1772,127,'2012-12-07','2012-12-07 16:01:29',0)
 ,(1773,138,'2012-12-07','2012-12-07 16:01:32',0)
 ,(1774,137,'2012-12-07','2012-12-07 16:01:37',0)
 ,(1775,136,'2012-12-07','2012-12-07 16:01:39',0)
 ,(1776,127,'2012-12-07','2012-12-07 16:01:57',0)
 ,(1777,127,'2012-12-07','2012-12-07 16:02:02',0)
 ,(1778,136,'2012-12-07','2012-12-07 16:02:04',0)
 ,(1779,137,'2012-12-07','2012-12-07 16:02:05',0)
 ,(1780,127,'2012-12-07','2012-12-07 16:03:55',0)
 ,(1781,136,'2012-12-07','2012-12-07 16:03:57',0)
 ,(1782,127,'2012-12-07','2012-12-07 16:05:03',0)
 ,(1783,136,'2012-12-07','2012-12-07 16:05:06',0)
 ,(1784,137,'2012-12-07','2012-12-07 16:05:25',0)
 ,(1785,127,'2012-12-07','2012-12-07 16:06:53',0)
 ,(1786,138,'2012-12-07','2012-12-07 16:06:55',0)
 ,(1787,137,'2012-12-07','2012-12-07 16:06:57',0)
 ,(1788,136,'2012-12-07','2012-12-07 16:06:59',0)
 ,(1789,127,'2012-12-07','2012-12-07 16:07:22',0)
 ,(1790,136,'2012-12-07','2012-12-07 16:07:24',0)
 ,(1791,138,'2012-12-07','2012-12-07 16:07:25',0)
 ,(1792,137,'2012-12-07','2012-12-07 16:07:28',0)
 ,(1793,136,'2012-12-07','2012-12-07 16:08:12',0)
 ,(1794,127,'2012-12-07','2012-12-07 16:08:20',0)
 ,(1795,136,'2012-12-07','2012-12-07 16:08:21',0)
 ,(1796,138,'2012-12-07','2012-12-07 16:08:22',0)
 ,(1797,137,'2012-12-07','2012-12-07 16:08:23',0)
 ,(1798,127,'2012-12-07','2012-12-07 16:10:23',0)
 ,(1799,136,'2012-12-07','2012-12-07 16:10:25',0)
 ,(1800,127,'2012-12-07','2012-12-07 16:10:58',0)
 ,(1801,136,'2012-12-07','2012-12-07 16:11:00',0)
 ,(1802,127,'2012-12-07','2012-12-07 16:11:12',0)
 ,(1803,136,'2012-12-07','2012-12-07 16:11:15',0)
 ,(1804,127,'2012-12-07','2012-12-07 16:11:37',0)
 ,(1805,136,'2012-12-07','2012-12-07 16:11:41',0)
 ,(1806,127,'2012-12-07','2012-12-07 16:11:58',0)
 ,(1807,127,'2012-12-07','2012-12-07 16:12:22',0)
 ,(1808,136,'2012-12-07','2012-12-07 16:12:27',0)
 ,(1809,127,'2012-12-07','2012-12-07 16:14:39',0)
 ,(1810,136,'2012-12-07','2012-12-07 16:14:42',0)
 ,(1811,127,'2012-12-07','2012-12-07 16:15:24',0)
 ,(1812,137,'2012-12-07','2012-12-07 16:15:26',0)
 ,(1813,138,'2012-12-07','2012-12-07 16:15:29',0)
 ,(1814,136,'2012-12-07','2012-12-07 16:15:31',0)
 ,(1815,127,'2012-12-07','2012-12-07 16:15:48',0)
 ,(1816,137,'2012-12-07','2012-12-07 16:15:50',0)
 ,(1817,137,'2012-12-07','2012-12-07 16:15:59',0)
 ,(1818,127,'2012-12-07','2012-12-07 16:16:01',0)
 ,(1819,127,'2012-12-07','2012-12-07 16:16:03',0)
 ,(1820,136,'2012-12-07','2012-12-07 16:16:14',0)
 ,(1821,136,'2012-12-07','2012-12-07 16:16:21',0)
 ,(1822,127,'2012-12-07','2012-12-07 16:16:23',0)
 ,(1823,136,'2012-12-07','2012-12-07 16:16:25',0)
 ,(1824,127,'2012-12-07','2012-12-07 16:16:31',0)
 ,(1825,127,'2012-12-07','2012-12-07 16:16:33',0)
 ,(1826,136,'2012-12-07','2012-12-07 16:16:35',0)
 ,(1827,138,'2012-12-07','2012-12-07 16:16:37',0)
 ,(1828,137,'2012-12-07','2012-12-07 16:16:44',0)
 ,(1829,127,'2012-12-07','2012-12-07 16:17:12',0)
 ,(1830,136,'2012-12-07','2012-12-07 16:17:14',0)
 ,(1831,138,'2012-12-07','2012-12-07 16:17:20',0)
 ,(1832,127,'2012-12-07','2012-12-07 16:17:33',0)
 ,(1833,136,'2012-12-07','2012-12-07 16:17:36',0)
 ,(1834,127,'2012-12-07','2012-12-07 16:18:39',0)
 ,(1835,137,'2012-12-07','2012-12-07 16:18:41',0)
 ,(1836,127,'2012-12-07','2012-12-07 16:18:44',0)
 ,(1837,136,'2012-12-07','2012-12-07 16:18:54',0)
 ,(1838,136,'2012-12-07','2012-12-07 16:19:37',0)
 ,(1839,127,'2012-12-07','2012-12-07 16:19:38',0)
 ,(1840,136,'2012-12-07','2012-12-07 16:19:40',0)
 ,(1841,127,'2012-12-07','2012-12-07 16:19:45',0)
 ,(1842,127,'2012-12-07','2012-12-07 16:19:46',0)
 ,(1843,127,'2012-12-07','2012-12-07 16:19:47',0)
 ,(1844,127,'2012-12-07','2012-12-07 16:19:47',0)
 ,(1845,127,'2012-12-07','2012-12-07 16:19:48',0)
 ,(1846,137,'2012-12-07','2012-12-07 16:19:51',0)
 ,(1847,138,'2012-12-07','2012-12-07 16:19:54',0)
 ,(1848,136,'2012-12-07','2012-12-07 16:19:56',0)
 ,(1849,127,'2012-12-07','2012-12-07 16:21:10',0)
 ,(1850,138,'2012-12-07','2012-12-07 16:21:13',0)
 ,(1851,137,'2012-12-07','2012-12-07 16:21:24',0)
 ,(1852,127,'2012-12-07','2012-12-07 16:22:41',0)
 ,(1853,136,'2012-12-07','2012-12-07 16:22:43',0)
 ,(1854,127,'2012-12-07','2012-12-07 16:23:03',0)
 ,(1855,136,'2012-12-07','2012-12-07 16:23:04',0)
 ,(1856,127,'2012-12-07','2012-12-07 16:23:24',0)
 ,(1857,136,'2012-12-07','2012-12-07 16:23:25',0)
 ,(1858,138,'2012-12-07','2012-12-07 16:23:35',0)
 ,(1859,137,'2012-12-07','2012-12-07 16:23:40',0)
 ,(1860,127,'2012-12-07','2012-12-07 16:24:09',0)
 ,(1861,138,'2012-12-07','2012-12-07 16:24:12',0)
 ,(1862,136,'2012-12-07','2012-12-07 16:24:13',0)
 ,(1863,127,'2012-12-07','2012-12-07 16:24:43',0)
 ,(1864,137,'2012-12-07','2012-12-07 16:24:48',0)
 ,(1865,1,'2012-12-10','2012-12-10 10:23:29',0)
 ,(1866,127,'2012-12-10','2012-12-10 10:23:34',0)
 ,(1867,109,'2012-12-10','2012-12-10 10:24:40',0)
 ,(1868,2,'2012-12-10','2012-12-10 10:24:41',1)
 ,(1869,104,'2012-12-10','2012-12-10 10:24:43',1)
 ,(1870,2,'2012-12-10','2012-12-10 10:25:02',1)
 ,(1871,34,'2012-12-10','2012-12-10 10:25:07',1)
 ,(1872,34,'2012-12-10','2012-12-10 10:25:15',1)
 ,(1873,34,'2012-12-10','2012-12-10 10:26:41',1)
 ,(1874,34,'2012-12-10','2012-12-10 10:26:42',1)
 ,(1875,34,'2012-12-10','2012-12-10 10:29:40',1)
 ,(1876,34,'2012-12-10','2012-12-10 10:29:50',1)
 ,(1877,34,'2012-12-10','2012-12-10 10:29:51',1)
 ,(1878,2,'2012-12-10','2012-12-10 10:29:54',1)
 ,(1879,32,'2012-12-10','2012-12-10 10:29:59',1)
 ,(1880,109,'2012-12-10','2012-12-10 10:30:19',0)
 ,(1881,2,'2012-12-10','2012-12-10 10:30:20',1)
 ,(1882,32,'2012-12-10','2012-12-10 10:30:24',1)
 ,(1883,32,'2012-12-10','2012-12-10 10:30:28',1)
 ,(1884,32,'2012-12-10','2012-12-10 10:30:32',1)
 ,(1885,32,'2012-12-10','2012-12-10 10:30:34',1)
 ,(1886,32,'2012-12-10','2012-12-10 10:30:38',1)
 ,(1887,32,'2012-12-10','2012-12-10 10:30:38',1)
 ,(1888,1,'2012-12-10','2012-12-10 10:30:44',1)
 ,(1889,127,'2012-12-10','2012-12-10 10:30:49',1)
 ,(1890,137,'2012-12-10','2012-12-10 10:30:53',1)
 ,(1891,137,'2012-12-10','2012-12-10 10:30:56',1)
 ,(1892,34,'2012-12-10','2012-12-10 10:31:34',1)
 ,(1893,34,'2012-12-10','2012-12-10 10:31:37',1)
 ,(1894,34,'2012-12-10','2012-12-10 10:31:42',1)
 ,(1895,34,'2012-12-10','2012-12-10 10:31:42',1)
 ,(1896,88,'2012-12-10','2012-12-10 10:32:02',1)
 ,(1897,88,'2012-12-10','2012-12-10 10:32:05',1)
 ,(1898,88,'2012-12-10','2012-12-10 10:32:11',1)
 ,(1899,88,'2012-12-10','2012-12-10 10:32:11',1)
 ,(1900,1,'2012-12-10','2012-12-10 10:32:15',1)
 ,(1901,34,'2012-12-10','2012-12-10 10:32:19',1)
 ,(1902,34,'2012-12-10','2012-12-10 10:32:23',1)
 ,(1903,34,'2012-12-10','2012-12-10 10:32:26',1)
 ,(1904,34,'2012-12-10','2012-12-10 10:32:27',1)
 ,(1905,34,'2012-12-10','2012-12-10 10:32:29',1)
 ,(1906,34,'2012-12-10','2012-12-10 10:32:32',1)
 ,(1907,34,'2012-12-10','2012-12-10 10:32:32',1)
 ,(1908,34,'2012-12-10','2012-12-10 10:32:35',1)
 ,(1909,34,'2012-12-10','2012-12-10 10:32:39',1)
 ,(1910,34,'2012-12-10','2012-12-10 10:32:39',1)
 ,(1911,34,'2012-12-10','2012-12-10 10:32:41',1)
 ,(1912,34,'2012-12-10','2012-12-10 10:32:45',1)
 ,(1913,34,'2012-12-10','2012-12-10 10:32:45',1)
 ,(1914,34,'2012-12-10','2012-12-10 10:32:47',1)
 ,(1915,34,'2012-12-10','2012-12-10 10:32:51',1)
 ,(1916,34,'2012-12-10','2012-12-10 10:32:51',1)
 ,(1917,34,'2012-12-10','2012-12-10 10:32:53',1)
 ,(1918,34,'2012-12-10','2012-12-10 10:32:56',1)
 ,(1919,34,'2012-12-10','2012-12-10 10:32:56',1)
 ,(1920,1,'2012-12-10','2012-12-10 10:33:00',1)
 ,(1921,127,'2012-12-10','2012-12-10 10:33:03',1)
 ,(1922,127,'2012-12-10','2012-12-10 10:33:55',1)
 ,(1923,127,'2012-12-10','2012-12-10 10:34:06',1)
 ,(1924,127,'2012-12-10','2012-12-10 10:34:24',1)
 ,(1925,127,'2012-12-10','2012-12-10 10:34:48',1)
 ,(1926,34,'2012-12-10','2012-12-10 10:34:58',1)
 ,(1927,34,'2012-12-10','2012-12-10 10:35:02',1)
 ,(1928,127,'2012-12-10','2012-12-10 10:35:14',1)
 ,(1929,127,'2012-12-10','2012-12-10 10:35:19',1)
 ,(1930,137,'2012-12-10','2012-12-10 10:35:34',1)
 ,(1931,137,'2012-12-10','2012-12-10 10:35:39',1)
 ,(1932,127,'2012-12-10','2012-12-10 10:35:41',1)
 ,(1933,127,'2012-12-10','2012-12-10 10:35:58',1)
 ,(1934,127,'2012-12-10','2012-12-10 10:36:06',1)
 ,(1935,127,'2012-12-10','2012-12-10 10:36:07',1)
 ,(1936,34,'2012-12-10','2012-12-10 10:38:43',1)
 ,(1937,1,'2012-12-10','2012-12-10 10:38:48',1)
 ,(1938,127,'2012-12-10','2012-12-10 10:38:51',1)
 ,(1939,127,'2012-12-10','2012-12-10 10:38:54',1)
 ,(1940,127,'2012-12-10','2012-12-10 10:39:07',1)
 ,(1941,127,'2012-12-10','2012-12-10 10:39:16',1)
 ,(1942,127,'2012-12-10','2012-12-10 10:39:20',1)
 ,(1943,127,'2012-12-10','2012-12-10 10:39:37',1)
 ,(1944,34,'2012-12-10','2012-12-10 10:40:30',1)
 ,(1945,127,'2012-12-10','2012-12-10 10:40:32',1)
 ,(1946,127,'2012-12-10','2012-12-10 10:42:40',1)
 ,(1947,127,'2012-12-10','2012-12-10 10:43:11',1)
 ,(1948,34,'2012-12-10','2012-12-10 10:44:55',1)
 ,(1949,127,'2012-12-10','2012-12-10 10:44:57',1)
 ,(1950,127,'2012-12-10','2012-12-10 10:45:11',1)
 ,(1951,127,'2012-12-10','2012-12-10 10:45:47',1)
 ,(1952,127,'2012-12-10','2012-12-10 10:46:25',1)
 ,(1953,127,'2012-12-10','2012-12-10 10:46:33',1)
 ,(1954,127,'2012-12-10','2012-12-10 10:47:24',1)
 ,(1955,127,'2012-12-10','2012-12-10 10:47:44',1)
 ,(1956,127,'2012-12-10','2012-12-10 10:52:26',1)
 ,(1957,127,'2012-12-10','2012-12-10 10:53:05',1)
 ,(1958,127,'2012-12-10','2012-12-10 10:53:50',1)
 ,(1959,127,'2012-12-10','2012-12-10 10:53:50',1)
 ,(1960,127,'2012-12-10','2012-12-10 10:54:08',1)
 ,(1961,127,'2012-12-10','2012-12-10 10:54:34',1)
 ,(1962,127,'2012-12-10','2012-12-10 10:54:58',1)
 ,(1963,127,'2012-12-10','2012-12-10 10:55:03',1)
 ,(1964,127,'2012-12-10','2012-12-10 10:56:04',1)
 ,(1965,127,'2012-12-10','2012-12-10 10:56:17',1)
 ,(1966,127,'2012-12-10','2012-12-10 10:56:33',1)
 ,(1967,127,'2012-12-10','2012-12-10 10:57:37',1)
 ,(1968,127,'2012-12-10','2012-12-10 10:58:02',1)
 ,(1969,127,'2012-12-10','2012-12-10 10:58:24',1)
 ,(1970,127,'2012-12-10','2012-12-10 10:58:38',1)
 ,(1971,7,'2012-12-10','2012-12-10 10:59:59',1)
 ,(1972,1,'2012-12-10','2012-12-10 11:00:32',1)
 ,(1973,127,'2012-12-10','2012-12-10 11:00:36',1)
 ,(1974,127,'2012-12-10','2012-12-10 11:00:45',1)
 ,(1975,127,'2012-12-10','2012-12-10 11:00:59',1)
 ,(1976,127,'2012-12-10','2012-12-10 11:01:23',1)
 ,(1977,127,'2012-12-10','2012-12-10 11:02:02',1)
 ,(1978,127,'2012-12-10','2012-12-10 11:02:18',1)
 ,(1979,127,'2012-12-10','2012-12-10 11:03:06',1)
 ,(1980,127,'2012-12-10','2012-12-10 11:07:21',1)
 ,(1981,127,'2012-12-10','2012-12-10 11:08:36',1)
 ,(1982,127,'2012-12-10','2012-12-10 11:28:15',1)
 ,(1983,127,'2012-12-10','2012-12-10 11:28:39',1)
 ,(1984,127,'2012-12-10','2012-12-10 11:29:34',1)
 ,(1985,127,'2012-12-10','2012-12-10 11:31:47',1)
 ,(1986,127,'2012-12-10','2012-12-10 11:32:00',1)
 ,(1987,127,'2012-12-10','2012-12-10 11:38:09',1)
 ,(1988,127,'2012-12-10','2012-12-10 11:39:07',1)
 ,(1989,127,'2012-12-10','2012-12-10 11:39:15',1)
 ,(1990,127,'2012-12-10','2012-12-10 11:39:15',1)
 ,(1991,127,'2012-12-10','2012-12-10 11:39:57',1)
 ,(1992,127,'2012-12-10','2012-12-10 11:40:25',1)
 ,(1993,127,'2012-12-10','2012-12-10 11:47:43',1)
 ,(1994,127,'2012-12-10','2012-12-10 11:48:00',1)
 ,(1995,127,'2012-12-10','2012-12-10 11:49:03',1)
 ,(1996,138,'2012-12-10','2012-12-10 11:50:47',1)
 ,(1997,137,'2012-12-10','2012-12-10 11:50:50',1)
 ,(1998,136,'2012-12-10','2012-12-10 11:50:57',1)
 ,(1999,127,'2012-12-10','2012-12-10 11:51:50',1)
 ,(2000,127,'2012-12-10','2012-12-10 11:52:15',1)
 ,(2001,127,'2012-12-10','2012-12-10 11:53:03',1)
 ,(2002,127,'2012-12-10','2012-12-10 11:53:15',1)
 ,(2003,127,'2012-12-10','2012-12-10 11:53:16',1)
 ,(2004,127,'2012-12-10','2012-12-10 11:53:54',1)
 ,(2005,127,'2012-12-10','2012-12-10 11:54:06',1)
 ,(2006,127,'2012-12-10','2012-12-10 11:54:11',1)
 ,(2007,127,'2012-12-10','2012-12-10 13:04:00',1)
 ,(2008,127,'2012-12-10','2012-12-10 13:04:16',1)
 ,(2009,127,'2012-12-10','2012-12-10 13:04:18',1)
 ,(2010,127,'2012-12-10','2012-12-10 13:04:34',1)
 ,(2011,127,'2012-12-10','2012-12-10 13:05:38',1)
 ,(2012,127,'2012-12-10','2012-12-10 13:06:00',1)
 ,(2013,127,'2012-12-10','2012-12-10 13:06:01',1)
 ,(2014,127,'2012-12-10','2012-12-10 13:06:40',1)
 ,(2015,127,'2012-12-10','2012-12-10 13:07:08',1)
 ,(2016,127,'2012-12-10','2012-12-10 13:07:22',1)
 ,(2017,127,'2012-12-10','2012-12-10 13:07:48',1)
 ,(2018,127,'2012-12-10','2012-12-10 13:08:03',1)
 ,(2019,127,'2012-12-10','2012-12-10 13:08:56',1)
 ,(2020,127,'2012-12-10','2012-12-10 13:09:40',1)
 ,(2021,127,'2012-12-10','2012-12-10 13:09:57',1)
 ,(2022,127,'2012-12-10','2012-12-10 13:10:09',1)
 ,(2023,127,'2012-12-10','2012-12-10 13:10:25',1)
 ,(2024,127,'2012-12-10','2012-12-10 13:11:28',1)
 ,(2025,127,'2012-12-10','2012-12-10 13:14:02',1)
 ,(2026,127,'2012-12-10','2012-12-10 13:14:13',1)
 ,(2027,127,'2012-12-10','2012-12-10 13:14:47',1)
 ,(2028,127,'2012-12-10','2012-12-10 13:15:00',1)
 ,(2029,127,'2012-12-10','2012-12-10 13:15:28',1)
 ,(2030,127,'2012-12-10','2012-12-10 13:15:46',1)
 ,(2031,127,'2012-12-10','2012-12-10 13:16:09',1)
 ,(2032,127,'2012-12-10','2012-12-10 13:17:25',1)
 ,(2033,127,'2012-12-10','2012-12-10 13:17:35',1)
 ,(2034,127,'2012-12-10','2012-12-10 13:17:56',1)
 ,(2035,127,'2012-12-10','2012-12-10 13:18:16',1)
 ,(2036,127,'2012-12-10','2012-12-10 13:18:49',1)
 ,(2037,127,'2012-12-10','2012-12-10 13:19:38',1)
 ,(2038,127,'2012-12-10','2012-12-10 13:19:38',1)
 ,(2039,127,'2012-12-10','2012-12-10 13:20:00',1)
 ,(2040,127,'2012-12-10','2012-12-10 13:20:26',1)
 ,(2041,127,'2012-12-10','2012-12-10 13:25:26',1)
 ,(2042,127,'2012-12-10','2012-12-10 13:25:53',1)
 ,(2043,127,'2012-12-10','2012-12-10 13:26:16',1)
 ,(2044,127,'2012-12-10','2012-12-10 13:27:45',1)
 ,(2045,137,'2012-12-10','2012-12-10 13:27:48',1)
 ,(2046,127,'2012-12-10','2012-12-10 13:27:51',1)
 ,(2047,127,'2012-12-10','2012-12-10 13:29:39',1)
 ,(2048,127,'2012-12-10','2012-12-10 13:32:52',1)
 ,(2049,138,'2012-12-10','2012-12-10 13:32:57',1)
 ,(2050,136,'2012-12-10','2012-12-10 13:32:58',1)
 ,(2051,137,'2012-12-10','2012-12-10 13:32:59',1)
 ,(2052,1,'2012-12-10','2012-12-10 14:01:07',1)
 ,(2053,127,'2012-12-10','2012-12-10 14:01:10',1)
 ,(2054,127,'2012-12-10','2012-12-10 14:01:35',1)
 ,(2055,127,'2012-12-10','2012-12-10 14:01:53',1)
 ,(2056,127,'2012-12-10','2012-12-10 14:18:57',1)
 ,(2057,127,'2012-12-10','2012-12-10 14:19:23',1)
 ,(2058,127,'2012-12-10','2012-12-10 14:20:07',1)
 ,(2059,127,'2012-12-10','2012-12-10 14:21:22',1)
 ,(2060,127,'2012-12-10','2012-12-10 14:50:19',1)
 ,(2061,127,'2012-12-10','2012-12-10 15:01:07',1)
 ,(2062,138,'2012-12-10','2012-12-10 15:01:10',1)
 ,(2063,127,'2012-12-10','2012-12-10 15:01:13',1)
 ,(2064,136,'2012-12-10','2012-12-10 15:01:16',1)
 ,(2065,136,'2012-12-10','2012-12-10 15:01:27',1)
 ,(2066,127,'2012-12-10','2012-12-10 15:01:30',1)
 ,(2067,136,'2012-12-10','2012-12-10 15:01:33',1)
 ,(2068,127,'2012-12-10','2012-12-10 15:01:35',1)
 ,(2069,127,'2012-12-10','2012-12-10 15:01:36',1)
 ,(2070,127,'2012-12-10','2012-12-10 15:01:36',1)
 ,(2071,136,'2012-12-10','2012-12-10 15:01:42',1)
 ,(2072,127,'2012-12-10','2012-12-10 15:02:55',1)
 ,(2073,127,'2012-12-10','2012-12-10 15:03:32',1)
 ,(2074,127,'2012-12-10','2012-12-10 15:04:13',1)
 ,(2075,127,'2012-12-10','2012-12-10 15:04:24',1)
 ,(2076,127,'2012-12-10','2012-12-10 15:05:39',1)
 ,(2077,127,'2012-12-10','2012-12-10 15:06:00',1)
 ,(2078,127,'2012-12-10','2012-12-10 15:06:18',1)
 ,(2079,127,'2012-12-10','2012-12-10 15:06:47',1)
 ,(2080,127,'2012-12-10','2012-12-10 15:07:22',1)
 ,(2081,127,'2012-12-10','2012-12-10 15:07:46',1)
 ,(2082,127,'2012-12-10','2012-12-10 15:08:33',1)
 ,(2083,138,'2012-12-10','2012-12-10 15:08:37',1)
 ,(2084,137,'2012-12-10','2012-12-10 15:08:38',1)
 ,(2085,136,'2012-12-10','2012-12-10 15:14:18',1)
 ,(2086,127,'2012-12-10','2012-12-10 15:14:21',1)
 ,(2087,127,'2012-12-10','2012-12-10 15:31:32',1)
 ,(2088,127,'2012-12-10','2012-12-10 15:31:41',1)
 ,(2089,127,'2012-12-10','2012-12-10 15:31:42',1)
 ,(2090,127,'2012-12-10','2012-12-10 15:44:15',1)
 ,(2091,127,'2012-12-10','2012-12-10 15:46:32',1)
 ,(2092,34,'2012-12-10','2012-12-10 15:46:45',1)
 ,(2093,34,'2012-12-10','2012-12-10 15:46:48',1)
 ,(2094,34,'2012-12-10','2012-12-10 15:47:11',1)
 ,(2095,34,'2012-12-10','2012-12-10 15:47:11',1)
 ,(2096,1,'2012-12-10','2012-12-10 15:47:14',1)
 ,(2097,1,'2012-12-10','2012-12-10 15:51:27',1)
 ,(2098,127,'2012-12-10','2012-12-10 15:51:41',1)
 ,(2099,127,'2012-12-10','2012-12-10 15:51:45',1)
 ,(2100,127,'2012-12-10','2012-12-10 15:51:48',1)
 ,(2101,127,'2012-12-10','2012-12-10 15:53:01',1)
 ,(2102,127,'2012-12-10','2012-12-10 15:53:29',1)
 ,(2103,127,'2012-12-10','2012-12-10 15:55:50',1)
 ,(2104,127,'2012-12-10','2012-12-10 15:56:11',1)
 ,(2105,127,'2012-12-10','2012-12-10 16:01:11',1)
 ,(2106,127,'2012-12-10','2012-12-10 16:01:41',1)
 ,(2107,127,'2012-12-10','2012-12-10 16:01:53',1)
 ,(2108,127,'2012-12-10','2012-12-10 16:02:10',1)
 ,(2109,127,'2012-12-10','2012-12-10 16:02:17',1)
 ,(2110,127,'2012-12-10','2012-12-10 16:03:06',1)
 ,(2111,127,'2012-12-10','2012-12-10 16:03:23',1)
 ,(2112,127,'2012-12-10','2012-12-10 16:03:48',1)
 ,(2113,127,'2012-12-10','2012-12-10 16:07:20',1)
 ,(2114,127,'2012-12-10','2012-12-10 16:28:43',1)
 ,(2115,127,'2012-12-10','2012-12-10 16:29:21',1)
 ,(2116,127,'2012-12-10','2012-12-10 16:29:56',1)
 ,(2117,127,'2012-12-10','2012-12-10 16:31:28',1)
 ,(2118,127,'2012-12-10','2012-12-10 16:32:14',1)
 ,(2119,127,'2012-12-10','2012-12-10 16:32:20',1)
 ,(2120,138,'2012-12-10','2012-12-10 16:32:25',1)
 ,(2121,127,'2012-12-10','2012-12-10 16:32:27',1)
 ,(2122,127,'2012-12-10','2012-12-10 16:33:14',1)
 ,(2123,127,'2012-12-10','2012-12-10 16:33:18',1)
 ,(2124,127,'2012-12-10','2012-12-10 16:33:53',1)
 ,(2125,127,'2012-12-10','2012-12-10 16:33:54',1)
 ,(2126,127,'2012-12-10','2012-12-10 16:33:55',1)
 ,(2127,127,'2012-12-10','2012-12-10 16:33:55',1)
 ,(2128,127,'2012-12-10','2012-12-10 16:33:55',1)
 ,(2129,127,'2012-12-10','2012-12-10 16:33:56',1)
 ,(2130,127,'2012-12-10','2012-12-10 16:33:56',1)
 ,(2131,127,'2012-12-10','2012-12-10 16:33:56',1)
 ,(2132,127,'2012-12-10','2012-12-10 16:33:57',1)
 ,(2133,127,'2012-12-10','2012-12-10 16:33:57',1)
 ,(2134,127,'2012-12-10','2012-12-10 16:34:02',1)
 ,(2135,127,'2012-12-10','2012-12-10 16:34:22',1)
 ,(2136,127,'2012-12-10','2012-12-10 16:34:40',1)
 ,(2137,127,'2012-12-10','2012-12-10 16:35:04',1)
 ,(2138,127,'2012-12-10','2012-12-10 16:35:22',1)
 ,(2139,127,'2012-12-10','2012-12-10 16:35:35',1)
 ,(2140,127,'2012-12-10','2012-12-10 16:36:09',1)
 ,(2141,127,'2012-12-10','2012-12-10 16:36:30',1)
 ,(2142,127,'2012-12-10','2012-12-10 16:36:32',1)
 ,(2143,127,'2012-12-10','2012-12-10 16:36:40',1)
 ,(2144,138,'2012-12-10','2012-12-10 16:36:46',1)
 ,(2145,136,'2012-12-10','2012-12-10 16:36:47',1)
 ,(2146,127,'2012-12-10','2012-12-10 16:38:28',1)
 ,(2147,127,'2012-12-10','2012-12-10 16:38:58',1)
 ,(2148,127,'2012-12-10','2012-12-10 16:40:22',1)
 ,(2149,127,'2012-12-10','2012-12-10 16:40:56',1)
 ,(2150,127,'2012-12-10','2012-12-10 16:41:09',1)
 ,(2151,127,'2012-12-10','2012-12-10 16:41:31',1)
 ,(2152,127,'2012-12-10','2012-12-10 16:41:57',1)
 ,(2153,127,'2012-12-10','2012-12-10 16:43:06',1)
 ,(2154,127,'2012-12-10','2012-12-10 16:43:15',1)
 ,(2155,127,'2012-12-10','2012-12-10 16:44:19',1)
 ,(2156,127,'2012-12-10','2012-12-10 16:44:46',1)
 ,(2157,127,'2012-12-10','2012-12-10 16:44:52',1)
 ,(2158,127,'2012-12-10','2012-12-10 16:44:52',1)
 ,(2159,127,'2012-12-10','2012-12-10 16:45:37',1)
 ,(2160,127,'2012-12-10','2012-12-10 16:45:50',1)
 ,(2161,127,'2012-12-10','2012-12-10 16:46:06',1)
 ,(2162,127,'2012-12-10','2012-12-10 16:46:17',1)
 ,(2163,127,'2012-12-10','2012-12-10 16:56:23',1)
 ,(2164,127,'2012-12-10','2012-12-10 16:57:08',1)
 ,(2165,127,'2012-12-10','2012-12-10 16:58:42',1)
 ,(2166,127,'2012-12-10','2012-12-10 16:58:59',1)
 ,(2167,136,'2012-12-10','2012-12-10 16:59:02',1)
 ,(2168,127,'2012-12-10','2012-12-10 16:59:26',1)
 ,(2169,127,'2012-12-10','2012-12-10 17:00:53',1)
 ,(2170,127,'2012-12-10','2012-12-10 17:01:35',1)
 ,(2171,127,'2012-12-10','2012-12-10 17:01:45',1)
 ,(2172,127,'2012-12-10','2012-12-10 17:02:21',1)
 ,(2173,127,'2012-12-10','2012-12-10 17:02:59',1)
 ,(2174,127,'2012-12-10','2012-12-10 17:03:17',1)
 ,(2175,127,'2012-12-10','2012-12-10 17:03:48',1)
 ,(2176,127,'2012-12-10','2012-12-10 17:04:42',1)
 ,(2177,127,'2012-12-10','2012-12-10 17:05:47',1)
 ,(2178,127,'2012-12-10','2012-12-10 17:06:32',1)
 ,(2179,1,'2012-12-10','2012-12-10 17:07:09',1)
 ,(2180,127,'2012-12-10','2012-12-10 17:21:39',1)
 ,(2181,127,'2012-12-10','2012-12-10 17:22:16',1)
 ,(2182,127,'2012-12-10','2012-12-10 17:22:35',1)
 ,(2183,1,'2012-12-10','2012-12-10 17:22:52',1)
 ,(2184,34,'2012-12-10','2012-12-10 17:22:55',1)
 ,(2185,34,'2012-12-10','2012-12-10 17:22:57',1)
 ,(2186,34,'2012-12-10','2012-12-10 17:22:58',1)
 ,(2187,1,'2012-12-10','2012-12-10 17:23:01',1)
 ,(2188,1,'2012-12-10','2012-12-10 17:23:38',1)
 ,(2189,127,'2012-12-10','2012-12-10 17:23:46',1)
 ,(2190,127,'2012-12-10','2012-12-10 17:24:40',1)
 ,(2191,127,'2012-12-10','2012-12-10 17:25:21',1)
 ,(2192,127,'2012-12-10','2012-12-10 17:26:10',1)
 ,(2193,127,'2012-12-10','2012-12-10 17:26:18',1)
 ,(2194,127,'2012-12-10','2012-12-10 17:27:00',1)
 ,(2195,127,'2012-12-10','2012-12-10 17:27:18',1)
 ,(2196,127,'2012-12-10','2012-12-10 17:28:02',1)
 ,(2197,127,'2012-12-10','2012-12-10 17:28:18',1)
 ,(2198,127,'2012-12-10','2012-12-10 17:28:49',1)
 ,(2199,127,'2012-12-11','2012-12-11 10:01:04',1)
 ,(2200,127,'2012-12-11','2012-12-11 10:01:45',1)
 ,(2201,127,'2012-12-11','2012-12-11 10:02:46',1)
 ,(2202,136,'2012-12-11','2012-12-11 10:29:16',1)
 ,(2203,127,'2012-12-11','2012-12-11 10:29:18',1)
 ,(2204,104,'2012-12-11','2012-12-11 10:29:22',1)
 ,(2205,127,'2012-12-11','2012-12-11 10:32:10',1)
 ,(2206,127,'2012-12-11','2012-12-11 10:32:16',1)
 ,(2207,127,'2012-12-11','2012-12-11 10:32:24',1)
 ,(2208,127,'2012-12-11','2012-12-11 10:33:06',1)
 ,(2209,127,'2012-12-11','2012-12-11 10:33:14',1)
 ,(2210,136,'2012-12-11','2012-12-11 10:33:20',1)
 ,(2211,136,'2012-12-11','2012-12-11 10:37:26',1)
 ,(2212,136,'2012-12-11','2012-12-11 10:38:09',1)
 ,(2213,136,'2012-12-11','2012-12-11 10:38:40',1)
 ,(2214,136,'2012-12-11','2012-12-11 10:38:49',1)
 ,(2215,136,'2012-12-11','2012-12-11 10:39:06',1)
 ,(2216,136,'2012-12-11','2012-12-11 10:39:17',1)
 ,(2217,136,'2012-12-11','2012-12-11 10:39:32',1)
 ,(2218,136,'2012-12-11','2012-12-11 10:40:13',1)
 ,(2219,136,'2012-12-11','2012-12-11 10:41:33',1)
 ,(2220,136,'2012-12-11','2012-12-11 10:41:39',1)
 ,(2221,136,'2012-12-11','2012-12-11 10:42:06',1)
 ,(2222,136,'2012-12-11','2012-12-11 10:42:55',1)
 ,(2223,136,'2012-12-11','2012-12-11 10:42:55',1)
 ,(2224,136,'2012-12-11','2012-12-11 10:43:25',1)
 ,(2225,136,'2012-12-11','2012-12-11 10:43:51',1)
 ,(2226,136,'2012-12-11','2012-12-11 10:44:18',1)
 ,(2227,136,'2012-12-11','2012-12-11 10:44:43',1)
 ,(2228,136,'2012-12-11','2012-12-11 10:45:22',1)
 ,(2229,136,'2012-12-11','2012-12-11 10:46:53',1)
 ,(2230,127,'2012-12-11','2012-12-11 10:46:56',1)
 ,(2231,127,'2012-12-11','2012-12-11 10:47:00',1)
 ,(2232,136,'2012-12-11','2012-12-11 10:47:03',1)
 ,(2233,127,'2012-12-11','2012-12-11 10:47:05',1)
 ,(2234,127,'2012-12-11','2012-12-11 10:47:52',1)
 ,(2235,127,'2012-12-11','2012-12-11 10:47:57',1)
 ,(2236,127,'2012-12-11','2012-12-11 10:48:02',1)
 ,(2237,138,'2012-12-11','2012-12-11 10:48:06',1)
 ,(2238,137,'2012-12-11','2012-12-11 10:48:11',1)
 ,(2239,136,'2012-12-11','2012-12-11 10:48:13',1)
 ,(2240,1,'2012-12-11','2012-12-11 11:10:53',1)
 ,(2241,1,'2012-12-11','2012-12-11 11:10:55',1)
 ,(2242,127,'2012-12-11','2012-12-11 11:17:09',1)
 ,(2243,127,'2012-12-11','2012-12-11 11:18:36',1)
 ,(2244,127,'2012-12-11','2012-12-11 11:19:40',1)
 ,(2245,127,'2012-12-11','2012-12-11 12:58:35',1)
 ,(2246,138,'2012-12-11','2012-12-11 12:58:42',1)
 ,(2247,136,'2012-12-11','2012-12-11 12:58:44',1)
 ,(2248,137,'2012-12-11','2012-12-11 12:58:49',1)
 ,(2249,127,'2012-12-11','2012-12-11 12:59:41',1)
 ,(2250,136,'2012-12-11','2012-12-11 12:59:44',1)
 ,(2251,138,'2012-12-11','2012-12-11 12:59:48',1)
 ,(2252,137,'2012-12-11','2012-12-11 12:59:49',1)
 ,(2253,127,'2012-12-11','2012-12-11 13:00:00',1)
 ,(2254,127,'2012-12-11','2012-12-11 13:00:30',1)
 ,(2255,127,'2012-12-11','2012-12-11 13:00:52',1)
 ,(2256,127,'2012-12-11','2012-12-11 13:01:51',1)
 ,(2257,127,'2012-12-11','2012-12-11 13:01:58',1)
 ,(2258,127,'2012-12-11','2012-12-11 13:02:52',1)
 ,(2259,127,'2012-12-11','2012-12-11 13:03:01',1)
 ,(2260,127,'2012-12-11','2012-12-11 13:04:54',1)
 ,(2261,127,'2012-12-11','2012-12-11 13:05:00',1)
 ,(2262,127,'2012-12-11','2012-12-11 13:06:47',1)
 ,(2263,127,'2012-12-11','2012-12-11 13:07:28',1)
 ,(2264,127,'2012-12-11','2012-12-11 13:07:37',1)
 ,(2265,127,'2012-12-11','2012-12-11 13:07:41',1)
 ,(2266,127,'2012-12-11','2012-12-11 13:07:48',1)
 ,(2267,127,'2012-12-11','2012-12-11 13:08:07',1)
 ,(2268,127,'2012-12-11','2012-12-11 13:08:48',1)
 ,(2269,127,'2012-12-11','2012-12-11 13:09:21',1)
 ,(2270,127,'2012-12-11','2012-12-11 13:09:53',1)
 ,(2271,127,'2012-12-11','2012-12-11 13:10:06',1)
 ,(2272,127,'2012-12-11','2012-12-11 13:10:21',1)
 ,(2273,127,'2012-12-11','2012-12-11 13:10:47',1)
 ,(2274,127,'2012-12-11','2012-12-11 13:11:29',1)
 ,(2275,127,'2012-12-11','2012-12-11 13:11:45',1)
 ,(2276,127,'2012-12-11','2012-12-11 13:11:52',1)
 ,(2277,138,'2012-12-11','2012-12-11 13:11:55',1)
 ,(2278,127,'2012-12-11','2012-12-11 13:12:45',1)
 ,(2279,127,'2012-12-11','2012-12-11 13:13:36',1)
 ,(2280,127,'2012-12-11','2012-12-11 13:13:59',1)
 ,(2281,127,'2012-12-11','2012-12-11 13:14:30',1)
 ,(2282,127,'2012-12-11','2012-12-11 13:15:38',1)
 ,(2283,127,'2012-12-11','2012-12-11 13:16:25',1)
 ,(2284,127,'2012-12-11','2012-12-11 13:17:00',1)
 ,(2285,127,'2012-12-11','2012-12-11 13:17:28',1)
 ,(2286,127,'2012-12-11','2012-12-11 13:17:57',1)
 ,(2287,127,'2012-12-11','2012-12-11 13:18:28',1)
 ,(2288,127,'2012-12-11','2012-12-11 13:18:50',1)
 ,(2289,127,'2012-12-11','2012-12-11 13:19:13',1)
 ,(2290,127,'2012-12-11','2012-12-11 13:19:33',1)
 ,(2291,127,'2012-12-11','2012-12-11 13:21:04',1)
 ,(2292,127,'2012-12-11','2012-12-11 13:21:14',1)
 ,(2293,138,'2012-12-11','2012-12-11 13:21:17',1)
 ,(2294,127,'2012-12-11','2012-12-11 13:22:10',1)
 ,(2295,127,'2012-12-11','2012-12-11 13:22:50',1)
 ,(2296,127,'2012-12-11','2012-12-11 13:23:14',1)
 ,(2297,127,'2012-12-11','2012-12-11 13:23:29',1)
 ,(2298,127,'2012-12-11','2012-12-11 13:23:44',1)
 ,(2299,127,'2012-12-11','2012-12-11 13:24:10',1)
 ,(2300,136,'2012-12-11','2012-12-11 13:24:33',1)
 ,(2301,127,'2012-12-11','2012-12-11 13:30:44',1)
 ,(2302,136,'2012-12-11','2012-12-11 13:30:49',1)
 ,(2303,127,'2012-12-11','2012-12-11 13:41:44',1)
 ,(2304,136,'2012-12-11','2012-12-11 13:41:47',1)
 ,(2305,127,'2012-12-11','2012-12-11 13:42:00',1)
 ,(2306,136,'2012-12-11','2012-12-11 13:42:03',1)
 ,(2307,127,'2012-12-11','2012-12-11 13:42:07',1)
 ,(2308,136,'2012-12-11','2012-12-11 13:42:10',1)
 ,(2309,138,'2012-12-11','2012-12-11 13:43:17',1)
 ,(2310,137,'2012-12-11','2012-12-11 13:43:18',1)
 ,(2311,127,'2012-12-11','2012-12-11 13:43:35',1)
 ,(2312,137,'2012-12-11','2012-12-11 13:45:20',1)
 ,(2313,138,'2012-12-11','2012-12-11 13:45:21',1)
 ,(2314,136,'2012-12-11','2012-12-11 13:45:21',1)
 ,(2315,127,'2012-12-11','2012-12-11 13:45:49',1)
 ,(2316,136,'2012-12-11','2012-12-11 13:45:56',1)
 ,(2317,138,'2012-12-11','2012-12-11 13:45:57',1)
 ,(2318,137,'2012-12-11','2012-12-11 13:45:58',1)
 ,(2319,127,'2012-12-11','2012-12-11 13:46:07',1)
 ,(2320,137,'2012-12-11','2012-12-11 13:46:10',1)
 ,(2321,138,'2012-12-11','2012-12-11 13:46:11',1)
 ,(2322,136,'2012-12-11','2012-12-11 13:46:12',1)
 ,(2323,127,'2012-12-11','2012-12-11 13:55:05',0)
 ,(2324,138,'2012-12-11','2012-12-11 13:55:09',0)
 ,(2325,136,'2012-12-11','2012-12-11 13:55:10',0)
 ,(2326,137,'2012-12-11','2012-12-11 13:55:11',0)
 ,(2327,127,'2012-12-11','2012-12-11 13:55:28',0)
 ,(2328,136,'2012-12-11','2012-12-11 13:55:31',0)
 ,(2329,138,'2012-12-11','2012-12-11 13:55:32',0)
 ,(2330,137,'2012-12-11','2012-12-11 13:55:33',0)
 ,(2331,1,'2012-12-11','2012-12-11 13:55:39',0)
 ,(2332,127,'2012-12-11','2012-12-11 13:56:11',1)
 ,(2333,137,'2012-12-11','2012-12-11 13:56:14',1)
 ,(2334,138,'2012-12-11','2012-12-11 13:56:15',1)
 ,(2335,136,'2012-12-11','2012-12-11 13:56:17',1)
 ,(2336,127,'2012-12-11','2012-12-11 13:56:25',1)
 ,(2337,138,'2012-12-11','2012-12-11 13:56:27',1)
 ,(2338,136,'2012-12-11','2012-12-11 13:56:28',1)
 ,(2339,137,'2012-12-11','2012-12-11 13:56:30',1)
 ,(2340,1,'2012-12-11','2012-12-11 13:56:35',0)
 ,(2341,127,'2012-12-11','2012-12-11 13:56:36',0)
 ,(2342,137,'2012-12-11','2012-12-11 13:56:37',0)
 ,(2343,138,'2012-12-11','2012-12-11 13:56:38',0)
 ,(2344,136,'2012-12-11','2012-12-11 13:56:40',0)
 ,(2345,127,'2012-12-11','2012-12-11 13:59:06',0)
 ,(2346,127,'2012-12-11','2012-12-11 13:59:16',0)
 ,(2347,137,'2012-12-11','2012-12-11 13:59:19',0)
 ,(2348,138,'2012-12-11','2012-12-11 13:59:23',0)
 ,(2349,136,'2012-12-11','2012-12-11 13:59:27',0)
 ,(2350,127,'2012-12-11','2012-12-11 13:59:49',0)
 ,(2351,136,'2012-12-11','2012-12-11 13:59:51',0)
 ,(2352,138,'2012-12-11','2012-12-11 14:00:20',0)
 ,(2353,127,'2012-12-11','2012-12-11 14:00:30',0)
 ,(2354,136,'2012-12-11','2012-12-11 14:00:32',0)
 ,(2355,137,'2012-12-11','2012-12-11 14:00:45',0)
 ,(2356,138,'2012-12-11','2012-12-11 14:00:46',0)
 ,(2357,1,'2012-12-11','2012-12-11 14:01:08',0)
 ,(2358,1,'2012-12-11','2012-12-11 14:01:12',0)
 ,(2359,127,'2012-12-11','2012-12-11 14:01:16',0)
 ,(2360,138,'2012-12-11','2012-12-11 14:01:18',0)
 ,(2361,137,'2012-12-11','2012-12-11 14:01:21',0)
 ,(2362,136,'2012-12-11','2012-12-11 14:01:22',0)
 ,(2363,127,'2012-12-11','2012-12-11 14:01:28',0)
 ,(2364,137,'2012-12-11','2012-12-11 14:01:30',0)
 ,(2365,138,'2012-12-11','2012-12-11 14:01:32',0)
 ,(2366,127,'2012-12-11','2012-12-11 14:02:11',0)
 ,(2367,138,'2012-12-11','2012-12-11 14:02:13',0)
 ,(2368,136,'2012-12-11','2012-12-11 14:02:13',0)
 ,(2369,137,'2012-12-11','2012-12-11 14:02:14',0)
 ,(2370,127,'2012-12-11','2012-12-11 14:03:12',0)
 ,(2371,137,'2012-12-11','2012-12-11 14:03:14',0)
 ,(2372,138,'2012-12-11','2012-12-11 14:03:28',0)
 ,(2373,127,'2012-12-11','2012-12-11 14:03:41',0)
 ,(2374,137,'2012-12-11','2012-12-11 14:03:43',0)
 ,(2375,127,'2012-12-11','2012-12-11 14:03:57',0)
 ,(2376,138,'2012-12-11','2012-12-11 14:03:59',0)
 ,(2377,136,'2012-12-11','2012-12-11 14:04:13',0)
 ,(2378,127,'2012-12-11','2012-12-11 14:04:23',0)
 ,(2379,136,'2012-12-11','2012-12-11 14:04:33',0)
 ,(2380,127,'2012-12-11','2012-12-11 14:04:44',0)
 ,(2381,127,'2012-12-11','2012-12-11 14:06:09',1)
 ,(2382,127,'2012-12-11','2012-12-11 14:08:49',1)
 ,(2383,137,'2012-12-11','2012-12-11 14:08:53',1)
 ,(2384,127,'2012-12-11','2012-12-11 14:09:00',1)
 ,(2385,137,'2012-12-11','2012-12-11 14:09:03',1)
 ,(2386,127,'2012-12-11','2012-12-11 14:09:05',1)
 ,(2387,138,'2012-12-11','2012-12-11 14:09:07',1)
 ,(2388,127,'2012-12-11','2012-12-11 14:12:15',1)
 ,(2389,136,'2012-12-11','2012-12-11 14:12:20',1)
 ,(2390,137,'2012-12-11','2012-12-11 14:12:29',1)
 ,(2391,138,'2012-12-11','2012-12-11 14:12:31',1)
 ,(2392,127,'2012-12-11','2012-12-11 14:12:34',1)
 ,(2393,136,'2012-12-11','2012-12-11 14:12:36',1)
 ,(2394,127,'2012-12-11','2012-12-11 14:12:40',1)
 ,(2395,137,'2012-12-11','2012-12-11 14:12:42',1)
 ,(2396,127,'2012-12-11','2012-12-11 14:12:46',1)
 ,(2397,127,'2012-12-11','2012-12-11 14:13:30',1)
 ,(2398,127,'2012-12-11','2012-12-11 14:13:44',1)
 ,(2399,127,'2012-12-11','2012-12-11 14:14:00',1)
 ,(2400,127,'2012-12-11','2012-12-11 14:14:28',1)
 ,(2401,127,'2012-12-11','2012-12-11 14:15:03',1)
 ,(2402,137,'2012-12-11','2012-12-11 14:15:20',1)
 ,(2403,138,'2012-12-11','2012-12-11 14:15:23',1)
 ,(2404,127,'2012-12-11','2012-12-11 14:15:32',1)
 ,(2405,136,'2012-12-11','2012-12-11 14:15:34',1)
 ,(2406,127,'2012-12-11','2012-12-11 14:15:53',1)
 ,(2407,137,'2012-12-11','2012-12-11 14:16:00',1)
 ,(2408,127,'2012-12-11','2012-12-11 14:16:12',1)
 ,(2409,137,'2012-12-11','2012-12-11 14:16:14',1)
 ,(2410,127,'2012-12-11','2012-12-11 14:16:40',1)
 ,(2411,137,'2012-12-11','2012-12-11 14:16:42',1)
 ,(2412,136,'2012-12-11','2012-12-11 14:17:06',1)
 ,(2413,127,'2012-12-11','2012-12-11 14:17:18',1)
 ,(2414,127,'2012-12-11','2012-12-11 14:17:29',1)
 ,(2415,136,'2012-12-11','2012-12-11 14:17:31',1)
 ,(2416,137,'2012-12-11','2012-12-11 14:17:33',1)
 ,(2417,138,'2012-12-11','2012-12-11 14:17:34',1)
 ,(2418,127,'2012-12-11','2012-12-11 14:19:00',1)
 ,(2419,138,'2012-12-11','2012-12-11 14:19:03',1)
 ,(2420,136,'2012-12-11','2012-12-11 14:19:05',1)
 ,(2421,127,'2012-12-11','2012-12-11 14:19:08',1)
 ,(2422,137,'2012-12-11','2012-12-11 14:19:11',1)
 ,(2423,127,'2012-12-11','2012-12-11 14:19:14',1)
 ,(2424,138,'2012-12-11','2012-12-11 14:19:20',1)
 ,(2425,127,'2012-12-11','2012-12-11 14:19:26',1)
 ,(2426,138,'2012-12-11','2012-12-11 14:19:28',1)
 ,(2427,137,'2012-12-11','2012-12-11 14:19:29',1)
 ,(2428,136,'2012-12-11','2012-12-11 14:19:31',1)
 ,(2429,127,'2012-12-11','2012-12-11 14:19:31',1)
 ,(2430,127,'2012-12-11','2012-12-11 14:19:53',1)
 ,(2431,127,'2012-12-11','2012-12-11 14:21:15',1)
 ,(2432,137,'2012-12-11','2012-12-11 14:21:19',1)
 ,(2433,127,'2012-12-11','2012-12-11 14:22:14',1)
 ,(2434,137,'2012-12-11','2012-12-11 14:22:17',1)
 ,(2435,138,'2012-12-11','2012-12-11 14:22:20',1)
 ,(2436,127,'2012-12-11','2012-12-11 14:22:21',1)
 ,(2437,138,'2012-12-11','2012-12-11 14:22:25',1)
 ,(2438,136,'2012-12-11','2012-12-11 14:22:27',1)
 ,(2439,127,'2012-12-11','2012-12-11 14:27:44',1)
 ,(2440,137,'2012-12-11','2012-12-11 14:27:49',1)
 ,(2441,127,'2012-12-11','2012-12-11 14:28:16',1)
 ,(2442,136,'2012-12-11','2012-12-11 14:28:19',1)
 ,(2443,127,'2012-12-11','2012-12-11 14:28:36',1)
 ,(2444,137,'2012-12-11','2012-12-11 14:28:38',1)
 ,(2445,127,'2012-12-11','2012-12-11 14:28:57',1)
 ,(2446,137,'2012-12-11','2012-12-11 14:29:02',1)
 ,(2447,127,'2012-12-11','2012-12-11 14:29:29',1)
 ,(2448,136,'2012-12-11','2012-12-11 14:29:32',1)
 ,(2449,138,'2012-12-11','2012-12-11 14:29:33',1)
 ,(2450,137,'2012-12-11','2012-12-11 14:29:35',1)
 ,(2451,127,'2012-12-11','2012-12-11 14:30:13',1)
 ,(2452,136,'2012-12-11','2012-12-11 14:30:23',1)
 ,(2453,127,'2012-12-11','2012-12-11 14:30:36',1)
 ,(2454,136,'2012-12-11','2012-12-11 14:30:48',1)
 ,(2455,138,'2012-12-11','2012-12-11 14:30:50',1)
 ,(2456,137,'2012-12-11','2012-12-11 14:31:01',1)
 ,(2457,1,'2012-12-11','2012-12-11 14:46:15',0)
 ,(2458,127,'2012-12-11','2012-12-11 14:46:20',0)
 ,(2459,109,'2012-12-11','2012-12-11 14:46:34',0)
 ,(2460,2,'2012-12-11','2012-12-11 14:46:36',1)
 ,(2461,1,'2012-12-11','2012-12-11 14:46:38',1)
 ,(2462,127,'2012-12-11','2012-12-11 14:46:41',1)
 ,(2463,136,'2012-12-11','2012-12-11 14:46:44',1)
 ,(2464,127,'2012-12-11','2012-12-11 14:46:47',1)
 ,(2465,136,'2012-12-11','2012-12-11 14:46:49',1)
 ,(2466,136,'2012-12-11','2012-12-11 14:46:52',1)
 ,(2467,136,'2012-12-11','2012-12-11 15:02:49',1)
 ,(2468,136,'2012-12-11','2012-12-11 15:03:08',1)
 ,(2469,136,'2012-12-11','2012-12-11 15:03:40',1)
 ,(2470,136,'2012-12-11','2012-12-11 15:03:48',1)
 ,(2471,136,'2012-12-11','2012-12-11 15:03:52',1)
 ,(2472,136,'2012-12-11','2012-12-11 15:04:12',1)
 ,(2473,136,'2012-12-11','2012-12-11 15:22:24',1)
 ,(2474,136,'2012-12-11','2012-12-11 15:26:01',1)
 ,(2475,136,'2012-12-11','2012-12-11 15:27:13',1)
 ,(2476,136,'2012-12-11','2012-12-11 15:27:21',1)
 ,(2477,136,'2012-12-11','2012-12-11 15:27:46',1)
 ,(2478,136,'2012-12-11','2012-12-11 15:28:22',1)
 ,(2479,127,'2012-12-11','2012-12-11 16:00:11',0)
 ,(2480,1,'2012-12-11','2012-12-11 16:33:35',0)
 ,(2481,127,'2012-12-11','2012-12-11 16:33:45',0)
 ,(2482,137,'2012-12-11','2012-12-11 16:33:52',0)
 ,(2483,138,'2012-12-11','2012-12-11 16:33:54',0)
 ,(2484,109,'2012-12-11','2012-12-11 16:34:22',0)
 ,(2485,2,'2012-12-11','2012-12-11 16:34:23',1)
 ,(2486,1,'2012-12-11','2012-12-11 16:34:29',1)
 ,(2487,127,'2012-12-11','2012-12-11 16:34:35',1)
 ,(2488,127,'2012-12-11','2012-12-11 16:34:37',1)
 ,(2489,136,'2012-12-11','2012-12-11 16:34:40',1)
 ,(2490,136,'2012-12-11','2012-12-11 16:35:14',1)
 ,(2491,136,'2012-12-11','2012-12-11 16:35:15',1)
 ,(2492,136,'2012-12-11','2012-12-11 16:35:15',1)
 ,(2493,136,'2012-12-11','2012-12-11 16:35:15',1)
 ,(2494,136,'2012-12-11','2012-12-11 16:35:22',1)
 ,(2495,136,'2012-12-11','2012-12-11 16:35:45',1)
 ,(2496,1,'2012-12-11','2012-12-11 16:37:42',1)
 ,(2497,127,'2012-12-11','2012-12-11 16:37:45',1)
 ,(2498,136,'2012-12-11','2012-12-11 16:37:48',1)
 ,(2499,136,'2012-12-11','2012-12-11 16:38:02',1)
 ,(2500,136,'2012-12-11','2012-12-11 16:38:47',1)
 ,(2501,136,'2012-12-11','2012-12-11 16:40:43',1)
 ,(2502,136,'2012-12-11','2012-12-11 16:41:03',1)
 ,(2503,136,'2012-12-11','2012-12-11 16:41:21',1)
 ,(2504,136,'2012-12-11','2012-12-11 16:43:59',1)
 ,(2505,127,'2012-12-11','2012-12-11 16:46:20',1)
 ,(2506,136,'2012-12-11','2012-12-11 16:46:27',1)
 ,(2507,136,'2012-12-11','2012-12-11 16:48:05',1)
 ,(2508,136,'2012-12-11','2012-12-11 16:48:51',1)
 ,(2509,136,'2012-12-11','2012-12-11 16:58:35',1)
 ,(2510,136,'2012-12-11','2012-12-11 16:58:49',1)
 ,(2511,127,'2012-12-11','2012-12-11 16:58:54',1)
 ,(2512,136,'2012-12-11','2012-12-11 16:58:58',1)
 ,(2513,127,'2012-12-11','2012-12-11 17:02:21',1)
 ,(2514,137,'2012-12-11','2012-12-11 17:02:24',1)
 ,(2515,138,'2012-12-11','2012-12-11 17:02:25',1)
 ,(2516,136,'2012-12-11','2012-12-11 17:02:26',1)
 ,(2517,127,'2012-12-11','2012-12-11 17:02:58',1)
 ,(2518,137,'2012-12-11','2012-12-11 17:03:02',1)
 ,(2519,127,'2012-12-11','2012-12-11 17:03:38',1)
 ,(2520,136,'2012-12-11','2012-12-11 17:03:42',1)
 ,(2521,138,'2012-12-11','2012-12-11 17:03:44',1)
 ,(2522,137,'2012-12-11','2012-12-11 17:03:48',1)
 ,(2523,127,'2012-12-11','2012-12-11 17:03:50',1)
 ,(2524,136,'2012-12-11','2012-12-11 17:03:52',1)
 ,(2525,138,'2012-12-11','2012-12-11 17:09:56',1)
 ,(2526,137,'2012-12-11','2012-12-11 17:09:57',1)
 ,(2527,127,'2012-12-11','2012-12-11 17:10:45',1)
 ,(2528,136,'2012-12-11','2012-12-11 17:10:55',1)
 ,(2529,137,'2012-12-11','2012-12-11 17:11:02',1)
 ,(2530,127,'2012-12-11','2012-12-11 17:11:15',1)
 ,(2531,137,'2012-12-11','2012-12-11 17:11:19',1)
 ,(2532,127,'2012-12-11','2012-12-11 17:11:21',1)
 ,(2533,136,'2012-12-11','2012-12-11 17:11:23',1)
 ,(2534,136,'2012-12-11','2012-12-11 17:22:49',1)
 ,(2535,1,'2012-12-12','2012-12-12 12:59:25',0)
 ,(2536,127,'2012-12-12','2012-12-12 12:59:40',0)
 ,(2537,138,'2012-12-12','2012-12-12 12:59:43',0)
 ,(2538,136,'2012-12-12','2012-12-12 13:11:10',0)
 ,(2539,136,'2012-12-12','2012-12-12 13:11:14',0)
 ,(2540,136,'2012-12-12','2012-12-12 13:11:16',0)
 ,(2541,127,'2012-12-12','2012-12-12 13:33:06',0)
 ,(2542,127,'2012-12-12','2012-12-12 14:01:16',0)
 ,(2543,127,'2012-12-12','2012-12-12 14:01:23',0)
 ,(2544,127,'2012-12-12','2012-12-12 14:01:38',0)
 ,(2545,127,'2012-12-12','2012-12-12 14:02:08',0)
 ,(2546,127,'2012-12-12','2012-12-12 14:02:14',0)
 ,(2547,127,'2012-12-12','2012-12-12 14:02:35',0)
 ,(2548,127,'2012-12-12','2012-12-12 14:03:21',0)
 ,(2549,127,'2012-12-12','2012-12-12 14:03:29',0)
 ,(2550,127,'2012-12-12','2012-12-12 14:04:04',0)
 ,(2551,127,'2012-12-12','2012-12-12 14:04:34',0)
 ,(2552,127,'2012-12-12','2012-12-12 14:04:41',0)
 ,(2553,127,'2012-12-12','2012-12-12 14:05:13',0)
 ,(2554,127,'2012-12-12','2012-12-12 14:05:38',0)
 ,(2555,127,'2012-12-12','2012-12-12 14:05:50',0)
 ,(2556,127,'2012-12-12','2012-12-12 14:05:59',0)
 ,(2557,127,'2012-12-12','2012-12-12 14:06:53',0)
 ,(2558,127,'2012-12-12','2012-12-12 14:07:05',0)
 ,(2559,127,'2012-12-12','2012-12-12 14:07:17',0)
 ,(2560,127,'2012-12-12','2012-12-12 14:07:25',0)
 ,(2561,127,'2012-12-12','2012-12-12 14:07:42',0)
 ,(2562,127,'2012-12-12','2012-12-12 14:09:35',0)
 ,(2563,127,'2012-12-12','2012-12-12 14:09:38',0)
 ,(2564,127,'2012-12-12','2012-12-12 14:09:56',0)
 ,(2565,127,'2012-12-12','2012-12-12 14:10:12',0)
 ,(2566,127,'2012-12-12','2012-12-12 14:10:44',0)
 ,(2567,127,'2012-12-12','2012-12-12 14:10:51',0)
 ,(2568,127,'2012-12-12','2012-12-12 14:13:04',0)
 ,(2569,127,'2012-12-12','2012-12-12 14:13:14',0)
 ,(2570,127,'2012-12-12','2012-12-12 14:13:23',0)
 ,(2571,127,'2012-12-12','2012-12-12 14:13:29',0)
 ,(2572,127,'2012-12-12','2012-12-12 14:13:31',0)
 ,(2573,127,'2012-12-12','2012-12-12 14:13:45',0)
 ,(2574,127,'2012-12-12','2012-12-12 14:13:57',0)
 ,(2575,127,'2012-12-12','2012-12-12 14:14:01',0)
 ,(2576,127,'2012-12-12','2012-12-12 14:17:58',0)
 ,(2577,127,'2012-12-12','2012-12-12 14:18:06',0)
 ,(2578,127,'2012-12-12','2012-12-12 14:18:23',0)
 ,(2579,1,'2012-12-12','2012-12-12 14:19:10',0)
 ,(2580,127,'2012-12-12','2012-12-12 14:19:13',0)
 ,(2581,127,'2012-12-12','2012-12-12 14:19:27',0)
 ,(2582,127,'2012-12-12','2012-12-12 14:19:42',0)
 ,(2583,127,'2012-12-12','2012-12-12 14:19:52',0)
 ,(2584,127,'2012-12-12','2012-12-12 14:20:00',0)
 ,(2585,127,'2012-12-12','2012-12-12 14:20:15',0)
 ,(2586,127,'2012-12-12','2012-12-12 14:20:40',0)
 ,(2587,127,'2012-12-12','2012-12-12 14:20:53',0)
 ,(2588,127,'2012-12-12','2012-12-12 14:21:06',0)
 ,(2589,127,'2012-12-12','2012-12-12 14:22:08',0)
 ,(2590,127,'2012-12-12','2012-12-12 14:22:13',0)
 ,(2591,127,'2012-12-12','2012-12-12 14:22:17',0)
 ,(2592,127,'2012-12-12','2012-12-12 14:22:35',0)
 ,(2593,127,'2012-12-12','2012-12-12 14:22:49',0)
 ,(2594,127,'2012-12-12','2012-12-12 14:22:58',0)
 ,(2595,127,'2012-12-12','2012-12-12 14:23:06',0)
 ,(2596,127,'2012-12-12','2012-12-12 14:23:18',0)
 ,(2597,127,'2012-12-12','2012-12-12 14:23:38',0)
 ,(2598,127,'2012-12-12','2012-12-12 14:23:49',0)
 ,(2599,127,'2012-12-12','2012-12-12 14:24:49',0)
 ,(2600,127,'2012-12-12','2012-12-12 14:26:04',0)
 ,(2601,127,'2012-12-12','2012-12-12 14:26:16',0)
 ,(2602,127,'2012-12-12','2012-12-12 14:27:21',0)
 ,(2603,127,'2012-12-12','2012-12-12 14:28:10',0)
 ,(2604,127,'2012-12-12','2012-12-12 14:28:32',0)
 ,(2605,127,'2012-12-12','2012-12-12 14:28:38',0)
 ,(2606,127,'2012-12-12','2012-12-12 14:29:10',0)
 ,(2607,127,'2012-12-12','2012-12-12 14:30:09',0)
 ,(2608,127,'2012-12-12','2012-12-12 14:30:36',0)
 ,(2609,127,'2012-12-12','2012-12-12 14:31:08',0)
 ,(2610,127,'2012-12-12','2012-12-12 14:31:14',0)
 ,(2611,127,'2012-12-12','2012-12-12 14:31:42',0)
 ,(2612,127,'2012-12-12','2012-12-12 14:32:07',0)
 ,(2613,127,'2012-12-12','2012-12-12 14:34:29',0)
 ,(2614,127,'2012-12-12','2012-12-12 14:34:35',0)
 ,(2615,127,'2012-12-12','2012-12-12 15:01:45',0)
 ,(2616,127,'2012-12-12','2012-12-12 15:02:02',0)
 ,(2617,127,'2012-12-12','2012-12-12 15:03:23',0)
 ,(2618,127,'2012-12-12','2012-12-12 15:04:13',0)
 ,(2619,127,'2012-12-12','2012-12-12 15:04:37',0)
 ,(2620,127,'2012-12-12','2012-12-12 15:04:52',0)
 ,(2621,127,'2012-12-12','2012-12-12 15:05:11',0)
 ,(2622,127,'2012-12-12','2012-12-12 15:05:31',0)
 ,(2623,127,'2012-12-12','2012-12-12 15:06:06',0)
 ,(2624,127,'2012-12-12','2012-12-12 15:06:30',0)
 ,(2625,127,'2012-12-12','2012-12-12 15:06:55',0)
 ,(2626,127,'2012-12-12','2012-12-12 15:07:33',0)
 ,(2627,127,'2012-12-12','2012-12-12 15:08:09',0)
 ,(2628,127,'2012-12-12','2012-12-12 15:08:15',0)
 ,(2629,127,'2012-12-12','2012-12-12 15:09:07',0)
 ,(2630,127,'2012-12-12','2012-12-12 15:09:55',0)
 ,(2631,127,'2012-12-12','2012-12-12 15:10:34',0)
 ,(2632,127,'2012-12-12','2012-12-12 15:10:41',0)
 ,(2633,127,'2012-12-12','2012-12-12 15:10:50',0)
 ,(2634,138,'2012-12-12','2012-12-12 15:37:40',0)
 ,(2635,127,'2012-12-12','2012-12-12 15:38:20',0)
 ,(2636,137,'2012-12-12','2012-12-12 15:38:22',0)
 ,(2637,138,'2012-12-12','2012-12-12 15:38:23',0)
 ,(2638,136,'2012-12-12','2012-12-12 15:38:24',0)
 ,(2639,138,'2012-12-12','2012-12-12 15:38:33',0)
 ,(2640,138,'2012-12-12','2012-12-12 15:39:19',0)
 ,(2641,138,'2012-12-12','2012-12-12 15:39:48',0)
 ,(2642,138,'2012-12-12','2012-12-12 15:39:55',0)
 ,(2643,138,'2012-12-12','2012-12-12 15:40:04',0)
 ,(2644,1,'2012-12-12','2012-12-12 15:40:10',0)
 ,(2645,127,'2012-12-12','2012-12-12 15:40:13',0)
 ,(2646,127,'2012-12-12','2012-12-12 15:43:06',0)
 ,(2647,127,'2012-12-12','2012-12-12 15:43:12',0)
 ,(2648,127,'2012-12-12','2012-12-12 15:44:39',0)
 ,(2649,138,'2012-12-12','2012-12-12 15:44:47',0)
 ,(2650,127,'2012-12-12','2012-12-12 15:51:56',0)
 ,(2651,136,'2012-12-12','2012-12-12 15:52:02',0)
 ,(2652,136,'2012-12-12','2012-12-12 15:52:12',0)
 ,(2653,136,'2012-12-12','2012-12-12 15:53:35',0)
 ,(2654,136,'2012-12-12','2012-12-12 15:54:08',0)
 ,(2655,136,'2012-12-12','2012-12-12 15:54:18',0)
 ,(2656,136,'2012-12-12','2012-12-12 15:54:40',0)
 ,(2657,136,'2012-12-12','2012-12-12 15:54:47',0)
 ,(2658,136,'2012-12-12','2012-12-12 15:55:56',0)
 ,(2659,136,'2012-12-12','2012-12-12 15:56:58',0)
 ,(2660,127,'2012-12-12','2012-12-12 15:57:23',0)
 ,(2661,136,'2012-12-12','2012-12-12 15:57:34',0)
 ,(2662,136,'2012-12-12','2012-12-12 15:58:35',0)
 ,(2663,136,'2012-12-12','2012-12-12 15:59:17',0)
 ,(2664,136,'2012-12-12','2012-12-12 16:00:08',0)
 ,(2665,136,'2012-12-12','2012-12-12 16:00:20',0)
 ,(2666,127,'2012-12-12','2012-12-12 16:00:21',0)
 ,(2667,136,'2012-12-12','2012-12-12 16:00:27',0)
 ,(2668,127,'2012-12-12','2012-12-12 16:00:28',0)
 ,(2669,136,'2012-12-12','2012-12-12 16:28:08',0)
 ,(2670,127,'2012-12-12','2012-12-12 16:28:10',0)
 ,(2671,136,'2012-12-12','2012-12-12 16:28:13',0)
 ,(2672,127,'2012-12-12','2012-12-12 16:28:14',0)
 ,(2673,127,'2012-12-12','2012-12-12 16:28:14',0)
 ,(2674,127,'2012-12-12','2012-12-12 16:28:15',0)
 ,(2675,136,'2012-12-12','2012-12-12 16:28:27',0)
 ,(2676,127,'2012-12-12','2012-12-12 16:29:18',0)
 ,(2677,136,'2012-12-12','2012-12-12 16:29:19',0)
 ,(2678,136,'2012-12-12','2012-12-12 16:29:48',0)
 ,(2679,136,'2012-12-12','2012-12-12 16:29:52',0)
 ,(2680,136,'2012-12-12','2012-12-12 16:30:13',0)
 ,(2681,127,'2012-12-12','2012-12-12 16:30:14',0)
 ,(2682,127,'2012-12-12','2012-12-12 16:30:44',0)
 ,(2683,136,'2012-12-12','2012-12-12 16:30:47',0)
 ,(2684,127,'2012-12-12','2012-12-12 16:30:48',0)
 ,(2685,138,'2012-12-13','2012-12-13 09:38:35',0)
 ,(2686,109,'2012-12-13','2012-12-13 09:42:43',0)
 ,(2687,2,'2012-12-13','2012-12-13 09:42:44',1)
 ,(2688,104,'2012-12-13','2012-12-13 09:42:47',1)
 ,(2689,32,'2012-12-13','2012-12-13 09:43:29',1)
 ,(2690,32,'2012-12-13','2012-12-13 09:43:33',1)
 ,(2691,34,'2012-12-13','2012-12-13 09:43:43',1)
 ,(2692,32,'2012-12-13','2012-12-13 09:43:52',1)
 ,(2693,32,'2012-12-13','2012-12-13 09:43:55',1)
 ,(2694,34,'2012-12-13','2012-12-13 09:44:02',1)
 ,(2695,34,'2012-12-13','2012-12-13 09:44:09',1)
 ,(2696,34,'2012-12-13','2012-12-13 09:44:35',1)
 ,(2697,34,'2012-12-13','2012-12-13 09:44:35',1)
 ,(2698,32,'2012-12-13','2012-12-13 09:44:43',1)
 ,(2699,32,'2012-12-13','2012-12-13 09:44:46',1)
 ,(2700,32,'2012-12-13','2012-12-13 09:44:53',1)
 ,(2701,32,'2012-12-13','2012-12-13 09:44:54',1)
 ,(2702,1,'2012-12-13','2012-12-13 09:44:58',1)
 ,(2703,127,'2012-12-13','2012-12-13 09:45:05',1)
 ,(2704,127,'2012-12-13','2012-12-13 09:45:10',1)
 ,(2705,136,'2012-12-13','2012-12-13 09:45:13',1)
 ,(2706,138,'2012-12-13','2012-12-13 09:45:17',1)
 ,(2707,127,'2012-12-13','2012-12-13 09:45:23',1)
 ,(2708,136,'2012-12-13','2012-12-13 09:45:26',1)
 ,(2709,138,'2012-12-13','2012-12-13 09:45:30',1)
 ,(2710,137,'2012-12-13','2012-12-13 09:45:32',1)
 ,(2711,127,'2012-12-13','2012-12-13 09:54:01',1)
 ,(2712,138,'2012-12-13','2012-12-13 09:54:04',1)
 ,(2713,127,'2012-12-13','2012-12-13 09:54:06',1)
 ,(2714,138,'2012-12-13','2012-12-13 09:54:06',1)
 ,(2715,127,'2012-12-13','2012-12-13 09:54:07',1)
 ,(2716,127,'2012-12-13','2012-12-13 09:54:21',1)
 ,(2717,136,'2012-12-13','2012-12-13 09:54:46',1)
 ,(2718,127,'2012-12-13','2012-12-13 09:54:48',1)
 ,(2719,136,'2012-12-13','2012-12-13 09:54:50',1)
 ,(2720,127,'2012-12-13','2012-12-13 09:54:51',1)
 ,(2721,137,'2012-12-13','2012-12-13 09:54:56',1)
 ,(2722,127,'2012-12-13','2012-12-13 09:54:58',1)
 ,(2723,127,'2012-12-13','2012-12-13 09:55:40',1)
 ,(2724,138,'2012-12-13','2012-12-13 09:55:43',1)
 ,(2725,127,'2012-12-13','2012-12-13 09:55:45',1)
 ,(2726,138,'2012-12-13','2012-12-13 09:55:47',1)
 ,(2727,127,'2012-12-13','2012-12-13 09:55:49',1)
 ,(2728,127,'2012-12-13','2012-12-13 09:56:11',1)
 ,(2729,138,'2012-12-13','2012-12-13 09:56:13',1)
 ,(2730,127,'2012-12-13','2012-12-13 09:56:15',1)
 ,(2731,127,'2012-12-13','2012-12-13 09:56:39',1)
 ,(2732,138,'2012-12-13','2012-12-13 09:56:43',1)
 ,(2733,127,'2012-12-13','2012-12-13 09:56:45',1)
 ,(2734,136,'2012-12-13','2012-12-13 09:57:22',1)
 ,(2735,136,'2012-12-13','2012-12-13 09:58:43',1)
 ,(2736,127,'2012-12-13','2012-12-13 09:58:44',1)
 ,(2737,136,'2012-12-13','2012-12-13 09:58:53',1)
 ,(2738,127,'2012-12-13','2012-12-13 09:58:55',1)
 ,(2739,127,'2012-12-13','2012-12-13 09:58:59',1)
 ,(2740,136,'2012-12-13','2012-12-13 09:59:02',1)
 ,(2741,127,'2012-12-13','2012-12-13 10:02:59',1)
 ,(2742,127,'2012-12-13','2012-12-13 10:03:20',1)
 ,(2743,136,'2012-12-13','2012-12-13 10:03:24',1)
 ,(2744,127,'2012-12-13','2012-12-13 10:03:35',1)
 ,(2745,138,'2012-12-13','2012-12-13 10:03:38',1)
 ,(2746,127,'2012-12-13','2012-12-13 10:03:58',1)
 ,(2747,136,'2012-12-13','2012-12-13 10:04:08',1)
 ,(2748,127,'2012-12-13','2012-12-13 10:06:01',1)
 ,(2749,127,'2012-12-13','2012-12-13 10:06:10',1)
 ,(2750,127,'2012-12-13','2012-12-13 10:06:54',1)
 ,(2751,138,'2012-12-13','2012-12-13 10:06:58',1)
 ,(2752,138,'2012-12-13','2012-12-13 10:07:15',1)
 ,(2753,127,'2012-12-13','2012-12-13 10:07:17',1)
 ,(2754,138,'2012-12-13','2012-12-13 10:07:21',1)
 ,(2755,127,'2012-12-13','2012-12-13 10:07:22',1)
 ,(2756,127,'2012-12-13','2012-12-13 10:08:02',1)
 ,(2757,136,'2012-12-13','2012-12-13 10:08:05',1)
 ,(2758,136,'2012-12-13','2012-12-13 10:08:35',1)
 ,(2759,136,'2012-12-13','2012-12-13 10:08:42',1)
 ,(2760,136,'2012-12-13','2012-12-13 10:09:21',1)
 ,(2761,136,'2012-12-13','2012-12-13 10:09:32',1)
 ,(2762,136,'2012-12-13','2012-12-13 10:09:42',1)
 ,(2763,127,'2012-12-13','2012-12-13 10:09:44',1)
 ,(2764,136,'2012-12-13','2012-12-13 10:09:48',1)
 ,(2765,136,'2012-12-13','2012-12-13 10:53:51',1)
 ,(2766,127,'2012-12-13','2012-12-13 10:53:53',1)
 ,(2767,127,'2012-12-13','2012-12-13 10:54:04',1)
 ,(2768,127,'2012-12-13','2012-12-13 11:02:40',1)
 ,(2769,136,'2012-12-13','2012-12-13 11:02:43',1)
 ,(2770,136,'2012-12-13','2012-12-13 11:02:45',1)
 ,(2771,127,'2012-12-13','2012-12-13 11:02:47',1)
 ,(2772,127,'2012-12-13','2012-12-13 11:03:40',1)
 ,(2773,127,'2012-12-13','2012-12-13 11:04:17',1)
 ,(2774,127,'2012-12-13','2012-12-13 11:05:32',1)
 ,(2775,127,'2012-12-13','2012-12-13 11:06:00',1)
 ,(2776,127,'2012-12-13','2012-12-13 11:47:31',1)
 ,(2777,127,'2012-12-13','2012-12-13 11:47:41',1)
 ,(2778,127,'2012-12-13','2012-12-13 11:49:01',1)
 ,(2779,127,'2012-12-13','2012-12-13 11:52:07',1)
 ,(2780,127,'2012-12-13','2012-12-13 11:54:26',1)
 ,(2781,127,'2012-12-13','2012-12-13 11:54:51',1)
 ,(2782,127,'2012-12-13','2012-12-13 12:00:11',1)
 ,(2783,127,'2012-12-13','2012-12-13 12:00:40',1)
 ,(2784,127,'2012-12-13','2012-12-13 12:01:48',1)
 ,(2785,127,'2012-12-13','2012-12-13 12:02:17',1)
 ,(2786,127,'2012-12-13','2012-12-13 12:02:28',1)
 ,(2787,127,'2012-12-13','2012-12-13 12:02:36',1)
 ,(2788,127,'2012-12-13','2012-12-13 12:03:10',1)
 ,(2789,127,'2012-12-13','2012-12-13 12:03:19',1)
 ,(2790,127,'2012-12-13','2012-12-13 12:03:40',1)
 ,(2791,127,'2012-12-13','2012-12-13 12:04:09',1)
 ,(2792,127,'2012-12-13','2012-12-13 12:04:20',1)
 ,(2793,127,'2012-12-13','2012-12-13 12:05:04',1)
 ,(2794,136,'2012-12-13','2012-12-13 12:05:10',1)
 ,(2795,137,'2012-12-13','2012-12-13 12:05:18',1)
 ,(2796,138,'2012-12-13','2012-12-13 12:05:21',1)
 ,(2797,127,'2012-12-13','2012-12-13 12:05:24',1)
 ,(2798,136,'2012-12-13','2012-12-13 12:05:26',1)
 ,(2799,136,'2012-12-13','2012-12-13 12:05:44',1)
 ,(2800,127,'2012-12-13','2012-12-13 12:05:45',1)
 ,(2801,127,'2012-12-13','2012-12-13 12:05:50',1)
 ,(2802,136,'2012-12-13','2012-12-13 12:05:52',1)
 ,(2803,136,'2012-12-13','2012-12-13 12:05:55',1)
 ,(2804,127,'2012-12-13','2012-12-13 12:06:02',1)
 ,(2805,136,'2012-12-13','2012-12-13 12:06:04',1)
 ,(2806,138,'2012-12-13','2012-12-13 12:06:05',1)
 ,(2807,137,'2012-12-13','2012-12-13 12:06:06',1)
 ,(2808,127,'2012-12-13','2012-12-13 12:06:08',1)
 ,(2809,136,'2012-12-13','2012-12-13 12:06:11',1)
 ,(2810,138,'2012-12-13','2012-12-13 12:06:12',1)
 ,(2811,137,'2012-12-13','2012-12-13 12:06:12',1)
 ,(2812,138,'2012-12-13','2012-12-13 12:38:24',1)
 ,(2813,127,'2012-12-13','2012-12-13 12:38:26',1)
 ,(2814,127,'2012-12-13','2012-12-13 12:45:30',1)
 ,(2815,127,'2012-12-13','2012-12-13 12:45:37',1)
 ,(2816,127,'2012-12-13','2012-12-13 12:46:07',1)
 ,(2817,127,'2012-12-13','2012-12-13 12:46:20',1)
 ,(2818,127,'2012-12-13','2012-12-13 12:46:26',1)
 ,(2819,127,'2012-12-13','2012-12-13 12:46:52',1)
 ,(2820,127,'2012-12-13','2012-12-13 12:46:53',1)
 ,(2821,136,'2012-12-13','2012-12-13 12:46:59',1)
 ,(2822,127,'2012-12-13','2012-12-13 12:47:01',1)
 ,(2823,127,'2012-12-13','2012-12-13 12:47:24',1)
 ,(2824,127,'2012-12-13','2012-12-13 12:47:43',1)
 ,(2825,127,'2012-12-13','2012-12-13 12:48:00',1)
 ,(2826,127,'2012-12-13','2012-12-13 12:48:04',1)
 ,(2827,127,'2012-12-13','2012-12-13 12:48:33',1)
 ,(2828,127,'2012-12-13','2012-12-13 12:51:48',1)
 ,(2829,138,'2012-12-13','2012-12-13 12:51:51',1)
 ,(2830,137,'2012-12-13','2012-12-13 12:51:52',1)
 ,(2831,136,'2012-12-13','2012-12-13 12:51:53',1)
 ,(2832,127,'2012-12-13','2012-12-13 12:57:05',1)
 ,(2833,136,'2012-12-13','2012-12-13 12:57:08',1)
 ,(2834,127,'2012-12-13','2012-12-13 12:57:09',1)
 ,(2835,127,'2012-12-13','2012-12-13 12:57:27',1)
 ,(2836,127,'2012-12-13','2012-12-13 12:57:50',1)
 ,(2837,136,'2012-12-13','2012-12-13 12:57:55',1)
 ,(2838,127,'2012-12-13','2012-12-13 12:57:57',1)
 ,(2839,136,'2012-12-13','2012-12-13 12:57:59',1)
 ,(2840,127,'2012-12-13','2012-12-13 12:58:00',1)
 ,(2841,127,'2012-12-13','2012-12-13 12:58:17',1)
 ,(2842,127,'2012-12-13','2012-12-13 12:58:36',1)
 ,(2843,127,'2012-12-13','2012-12-13 12:59:00',1)
 ,(2844,127,'2012-12-13','2012-12-13 12:59:09',1)
 ,(2845,136,'2012-12-13','2012-12-13 12:59:51',1)
 ,(2846,127,'2012-12-13','2012-12-13 13:00:02',1)
 ,(2847,136,'2012-12-13','2012-12-13 13:00:05',1)
 ,(2848,137,'2012-12-13','2012-12-13 13:00:11',1)
 ,(2849,127,'2012-12-13','2012-12-13 13:00:12',1)
 ,(2850,137,'2012-12-13','2012-12-13 13:00:14',1)
 ,(2851,127,'2012-12-13','2012-12-13 13:00:21',1)
 ,(2852,127,'2012-12-13','2012-12-13 13:00:26',1)
 ,(2853,136,'2012-12-13','2012-12-13 13:00:28',1)
 ,(2854,127,'2012-12-13','2012-12-13 13:00:40',1)
 ,(2855,136,'2012-12-13','2012-12-13 13:00:42',1)
 ,(2856,127,'2012-12-13','2012-12-13 13:00:47',1)
 ,(2857,137,'2012-12-13','2012-12-13 13:00:49',1)
 ,(2858,2,'2012-12-13','2012-12-13 13:01:31',1)
 ,(2859,7,'2012-12-13','2012-12-13 13:01:36',1)
 ,(2860,34,'2012-12-13','2012-12-13 13:02:53',1)
 ,(2861,34,'2012-12-13','2012-12-13 13:02:57',1)
 ,(2862,127,'2012-12-13','2012-12-13 13:03:10',1)
 ,(2863,127,'2012-12-13','2012-12-13 13:11:41',1)
 ,(2864,136,'2012-12-13','2012-12-13 13:11:44',1)
 ,(2865,127,'2012-12-13','2012-12-13 13:11:45',1)
 ,(2866,127,'2012-12-13','2012-12-13 13:11:56',1)
 ,(2867,136,'2012-12-13','2012-12-13 13:11:58',1)
 ,(2868,127,'2012-12-13','2012-12-13 13:12:17',1)
 ,(2869,137,'2012-12-13','2012-12-13 13:12:24',1)
 ,(2870,138,'2012-12-13','2012-12-13 13:12:25',1)
 ,(2871,136,'2012-12-13','2012-12-13 13:12:26',1)
 ,(2872,136,'2012-12-13','2012-12-13 13:12:34',1)
 ,(2873,127,'2012-12-13','2012-12-13 13:12:35',1)
 ,(2874,136,'2012-12-13','2012-12-13 13:12:37',1)
 ,(2875,127,'2012-12-13','2012-12-13 13:13:12',1)
 ,(2876,136,'2012-12-13','2012-12-13 13:13:16',1)
 ,(2877,136,'2012-12-13','2012-12-13 13:13:37',1)
 ,(2878,127,'2012-12-13','2012-12-13 13:13:38',1)
 ,(2879,136,'2012-12-13','2012-12-13 13:13:40',1)
 ,(2880,127,'2012-12-13','2012-12-13 13:13:43',1)
 ,(2881,137,'2012-12-13','2012-12-13 13:13:47',1)
 ,(2882,136,'2012-12-13','2012-12-13 13:13:59',1)
 ,(2883,136,'2012-12-13','2012-12-13 13:14:11',1)
 ,(2884,136,'2012-12-13','2012-12-13 13:15:03',1)
 ,(2885,136,'2012-12-13','2012-12-13 13:15:05',1)
 ,(2886,127,'2012-12-13','2012-12-13 13:15:07',1)
 ,(2887,136,'2012-12-13','2012-12-13 13:15:14',1)
 ,(2888,127,'2012-12-13','2012-12-13 13:15:17',1)
 ,(2889,136,'2012-12-13','2012-12-13 13:15:26',1)
 ,(2890,7,'2012-12-13','2012-12-13 13:15:43',1)
 ,(2891,34,'2012-12-13','2012-12-13 13:16:13',1)
 ,(2892,34,'2012-12-13','2012-12-13 13:16:17',1)
 ,(2893,1,'2012-12-13','2012-12-13 13:16:46',1)
 ,(2894,127,'2012-12-13','2012-12-13 13:18:05',1)
 ,(2895,136,'2012-12-13','2012-12-13 13:18:33',1)
 ,(2896,127,'2012-12-13','2012-12-13 13:18:35',1)
 ,(2897,127,'2012-12-13','2012-12-13 13:18:38',1)
 ,(2898,138,'2012-12-13','2012-12-13 13:18:50',1)
 ,(2899,127,'2012-12-13','2012-12-13 13:19:01',1)
 ,(2900,136,'2012-12-13','2012-12-13 13:19:35',1)
 ,(2901,127,'2012-12-13','2012-12-13 13:19:37',1)
 ,(2902,136,'2012-12-13','2012-12-13 13:19:38',1)
 ,(2903,127,'2012-12-13','2012-12-13 13:19:39',1)
 ,(2904,136,'2012-12-13','2012-12-13 13:19:42',1)
 ,(2905,137,'2012-12-13','2012-12-13 13:19:55',1)
 ,(2906,127,'2012-12-13','2012-12-13 13:20:04',1)
 ,(2907,136,'2012-12-13','2012-12-13 13:20:07',1)
 ,(2908,137,'2012-12-13','2012-12-13 13:20:12',1)
 ,(2909,138,'2012-12-13','2012-12-13 13:20:18',1)
 ,(2910,127,'2012-12-13','2012-12-13 13:21:08',1)
 ,(2911,127,'2012-12-13','2012-12-13 13:21:11',1)
 ,(2912,136,'2012-12-13','2012-12-13 13:21:12',1)
 ,(2913,139,'2012-12-13','2012-12-13 13:22:18',1)
 ,(2914,127,'2012-12-13','2012-12-13 13:22:19',1)
 ,(2915,127,'2012-12-13','2012-12-13 13:22:26',1)
 ,(2916,123,'2012-12-13','2012-12-13 13:22:28',1)
 ,(2917,1,'2012-12-13','2012-12-13 13:22:31',1)
 ,(2918,2,'2012-12-13','2012-12-13 13:22:33',1)
 ,(2919,7,'2012-12-13','2012-12-13 13:22:36',1)
 ,(2920,139,'2012-12-13','2012-12-13 13:22:43',1)
 ,(2921,127,'2012-12-13','2012-12-13 13:22:45',1)
 ,(2922,139,'2012-12-13','2012-12-13 13:22:47',1)
 ,(2923,127,'2012-12-13','2012-12-13 13:22:48',1)
 ,(2924,7,'2012-12-13','2012-12-13 13:22:52',1)
 ,(2925,6,'2012-12-13','2012-12-13 13:23:15',1)
 ,(2926,7,'2012-12-13','2012-12-13 13:23:15',1)
 ,(2927,140,'2012-12-13','2012-12-13 13:23:20',1)
 ,(2928,127,'2012-12-13','2012-12-13 13:23:31',1)
 ,(2929,127,'2012-12-13','2012-12-13 13:23:36',1)
 ,(2930,127,'2012-12-13','2012-12-13 13:23:38',1)
 ,(2931,127,'2012-12-13','2012-12-13 13:23:47',1)
 ,(2932,141,'2012-12-13','2012-12-13 13:24:00',1)
 ,(2933,127,'2012-12-13','2012-12-13 13:24:01',1)
 ,(2934,140,'2012-12-13','2012-12-13 13:24:18',1)
 ,(2935,2,'2012-12-13','2012-12-13 13:24:21',1)
 ,(2936,7,'2012-12-13','2012-12-13 13:24:24',1)
 ,(2937,141,'2012-12-13','2012-12-13 13:24:28',1)
 ,(2938,127,'2012-12-13','2012-12-13 13:24:30',1)
 ,(2939,127,'2012-12-13','2012-12-13 13:25:12',1)
 ,(2940,127,'2012-12-13','2012-12-13 13:27:01',1)
 ,(2941,127,'2012-12-13','2012-12-13 13:27:10',1)
 ,(2942,127,'2012-12-13','2012-12-13 13:29:38',1)
 ,(2943,127,'2012-12-13','2012-12-13 13:30:16',1)
 ,(2944,127,'2012-12-13','2012-12-13 13:30:44',1)
 ,(2945,7,'2012-12-13','2012-12-13 13:30:50',1)
 ,(2946,7,'2012-12-13','2012-12-13 13:31:05',1)
 ,(2947,6,'2012-12-13','2012-12-13 13:31:30',1)
 ,(2948,7,'2012-12-13','2012-12-13 13:31:31',1)
 ,(2949,142,'2012-12-13','2012-12-13 13:31:37',1)
 ,(2950,127,'2012-12-13','2012-12-13 13:31:38',1)
 ,(2951,142,'2012-12-13','2012-12-13 13:31:40',1)
 ,(2952,143,'2012-12-13','2012-12-13 13:31:59',1)
 ,(2953,127,'2012-12-13','2012-12-13 13:31:59',1)
 ,(2954,7,'2012-12-13','2012-12-13 13:32:08',1)
 ,(2955,143,'2012-12-13','2012-12-13 13:32:18',1)
 ,(2956,127,'2012-12-13','2012-12-13 13:32:20',1)
 ,(2957,127,'2012-12-13','2012-12-13 13:32:36',1)
 ,(2958,127,'2012-12-13','2012-12-13 13:32:41',1)
 ,(2959,7,'2012-12-13','2012-12-13 13:32:44',1)
 ,(2960,143,'2012-12-13','2012-12-13 13:32:49',1)
 ,(2961,143,'2012-12-13','2012-12-13 14:11:13',1)
 ,(2962,143,'2012-12-13','2012-12-13 14:11:24',1)
 ,(2963,127,'2012-12-13','2012-12-13 14:11:40',1)
 ,(2964,142,'2012-12-13','2012-12-13 14:11:42',1)
 ,(2965,137,'2012-12-13','2012-12-13 14:11:43',1)
 ,(2966,137,'2012-12-13','2012-12-13 14:11:47',1)
 ,(2967,144,'2012-12-13','2012-12-13 14:11:56',1)
 ,(2968,144,'2012-12-13','2012-12-13 14:12:24',1)
 ,(2969,137,'2012-12-13','2012-12-13 14:13:15',1)
 ,(2970,137,'2012-12-13','2012-12-13 14:13:19',1)
 ,(2971,127,'2012-12-13','2012-12-13 14:13:23',1)
 ,(2972,127,'2012-12-13','2012-12-13 14:13:27',1)
 ,(2973,127,'2012-12-13','2012-12-13 14:13:29',1)
 ,(2974,127,'2012-12-13','2012-12-13 14:13:32',1)
 ,(2975,145,'2012-12-13','2012-12-13 14:13:39',1)
 ,(2976,127,'2012-12-13','2012-12-13 14:13:58',1)
 ,(2977,146,'2012-12-13','2012-12-13 14:14:11',1)
 ,(2978,146,'2012-12-13','2012-12-13 14:14:40',1)
 ,(2979,146,'2012-12-13','2012-12-13 14:14:49',1)
 ,(2980,146,'2012-12-13','2012-12-13 14:14:59',1)
 ,(2981,146,'2012-12-13','2012-12-13 14:16:04',1)
 ,(2982,146,'2012-12-13','2012-12-13 14:16:15',1)
 ,(2983,146,'2012-12-13','2012-12-13 14:16:27',1)
 ,(2984,146,'2012-12-13','2012-12-13 14:17:14',1)
 ,(2985,146,'2012-12-13','2012-12-13 14:18:09',1)
 ,(2986,146,'2012-12-13','2012-12-13 14:18:16',1)
 ,(2987,146,'2012-12-13','2012-12-13 14:18:25',1)
 ,(2988,127,'2012-12-13','2012-12-13 14:18:26',1)
 ,(2989,147,'2012-12-13','2012-12-13 14:18:35',1)
 ,(2990,147,'2012-12-13','2012-12-13 14:18:43',1)
 ,(2991,147,'2012-12-13','2012-12-13 14:19:34',1)
 ,(2992,147,'2012-12-13','2012-12-13 14:19:42',1)
 ,(2993,147,'2012-12-13','2012-12-13 14:20:33',1)
 ,(2994,147,'2012-12-13','2012-12-13 14:21:01',1)
 ,(2995,147,'2012-12-13','2012-12-13 14:21:19',1)
 ,(2996,127,'2012-12-13','2012-12-13 14:21:21',1)
 ,(2997,147,'2012-12-13','2012-12-13 14:21:23',1)
 ,(2998,142,'2012-12-13','2012-12-13 14:21:27',1)
 ,(2999,137,'2012-12-13','2012-12-13 14:21:28',1)
 ,(3000,138,'2012-12-13','2012-12-13 14:21:29',1)
 ,(3001,136,'2012-12-13','2012-12-13 14:21:30',1)
 ,(3002,127,'2012-12-13','2012-12-13 14:24:13',1)
 ,(3003,127,'2012-12-13','2012-12-13 14:24:58',1)
 ,(3004,127,'2012-12-13','2012-12-13 14:26:15',1)
 ,(3005,127,'2012-12-13','2012-12-13 14:26:27',1)
 ,(3006,127,'2012-12-13','2012-12-13 14:26:40',1)
 ,(3007,147,'2012-12-13','2012-12-13 14:26:43',1)
 ,(3008,127,'2012-12-13','2012-12-13 14:34:13',1)
 ,(3009,147,'2012-12-13','2012-12-13 14:34:16',1)
 ,(3010,127,'2012-12-13','2012-12-13 14:35:32',1)
 ,(3011,147,'2012-12-13','2012-12-13 14:35:34',1)
 ,(3012,127,'2012-12-13','2012-12-13 14:38:20',1)
 ,(3013,127,'2012-12-13','2012-12-13 14:38:36',1)
 ,(3014,127,'2012-12-13','2012-12-13 14:39:00',1)
 ,(3015,127,'2012-12-13','2012-12-13 14:39:15',1)
 ,(3016,127,'2012-12-13','2012-12-13 14:39:40',1)
 ,(3017,127,'2012-12-13','2012-12-13 14:39:48',1)
 ,(3018,127,'2012-12-13','2012-12-13 14:41:26',1)
 ,(3019,127,'2012-12-13','2012-12-13 14:41:27',1)
 ,(3020,127,'2012-12-13','2012-12-13 14:42:50',1)
 ,(3021,127,'2012-12-13','2012-12-13 14:43:40',1)
 ,(3022,127,'2012-12-13','2012-12-13 14:44:32',1)
 ,(3023,127,'2012-12-13','2012-12-13 14:44:42',1)
 ,(3024,138,'2012-12-13','2012-12-13 14:45:46',1)
 ,(3025,136,'2012-12-13','2012-12-13 14:45:47',1)
 ,(3026,127,'2012-12-13','2012-12-13 14:46:30',1)
 ,(3027,127,'2012-12-13','2012-12-13 14:49:10',1)
 ,(3028,127,'2012-12-13','2012-12-13 14:50:13',1)
 ,(3029,127,'2012-12-13','2012-12-13 14:50:26',1)
 ,(3030,138,'2012-12-13','2012-12-13 14:50:37',1)
 ,(3031,136,'2012-12-13','2012-12-13 14:50:43',1)
 ,(3032,137,'2012-12-13','2012-12-13 14:50:44',1)
 ,(3033,142,'2012-12-13','2012-12-13 14:50:45',1)
 ,(3034,127,'2012-12-13','2012-12-13 14:52:54',1)
 ,(3035,127,'2012-12-13','2012-12-13 14:53:13',1)
 ,(3036,127,'2012-12-13','2012-12-13 14:53:53',1)
 ,(3037,127,'2012-12-13','2012-12-13 14:53:59',1)
 ,(3038,127,'2012-12-13','2012-12-13 14:54:59',1)
 ,(3039,127,'2012-12-13','2012-12-13 14:55:08',1)
 ,(3040,127,'2012-12-13','2012-12-13 14:55:21',1)
 ,(3041,127,'2012-12-13','2012-12-13 14:55:48',1)
 ,(3042,127,'2012-12-13','2012-12-13 14:56:38',1)
 ,(3043,136,'2012-12-13','2012-12-13 14:56:41',1)
 ,(3044,127,'2012-12-13','2012-12-13 14:56:46',1)
 ,(3045,136,'2012-12-13','2012-12-13 14:56:49',1)
 ,(3046,147,'2012-12-13','2012-12-13 14:57:21',1)
 ,(3047,142,'2012-12-13','2012-12-13 14:57:22',1)
 ,(3048,127,'2012-12-13','2012-12-13 14:58:38',1)
 ,(3049,127,'2012-12-13','2012-12-13 14:58:53',1)
 ,(3050,142,'2012-12-13','2012-12-13 14:58:57',1)
 ,(3051,127,'2012-12-13','2012-12-13 14:59:04',1)
 ,(3052,142,'2012-12-13','2012-12-13 14:59:08',1)
 ,(3053,7,'2012-12-13','2012-12-13 14:59:46',1)
 ,(3054,1,'2012-12-13','2012-12-13 15:00:11',1)
 ,(3055,127,'2012-12-13','2012-12-13 15:00:15',1)
 ,(3056,136,'2012-12-13','2012-12-13 15:00:19',1)
 ,(3057,138,'2012-12-13','2012-12-13 15:00:50',1)
 ,(3058,137,'2012-12-13','2012-12-13 15:00:51',1)
 ,(3059,127,'2012-12-13','2012-12-13 15:01:34',1)
 ,(3060,138,'2012-12-13','2012-12-13 15:01:54',1)
 ,(3061,136,'2012-12-13','2012-12-13 15:01:55',1)
 ,(3062,127,'2012-12-13','2012-12-13 15:03:02',1)
 ,(3063,138,'2012-12-13','2012-12-13 15:03:31',1)
 ,(3064,136,'2012-12-13','2012-12-13 15:03:32',1)
 ,(3065,127,'2012-12-13','2012-12-13 15:03:39',1)
 ,(3066,138,'2012-12-13','2012-12-13 15:03:43',1)
 ,(3067,136,'2012-12-13','2012-12-13 15:03:44',1)
 ,(3068,137,'2012-12-13','2012-12-13 15:03:45',1)
 ,(3069,127,'2012-12-13','2012-12-13 15:04:24',1)
 ,(3070,138,'2012-12-13','2012-12-13 15:04:28',1)
 ,(3071,136,'2012-12-13','2012-12-13 15:04:29',1)
 ,(3072,137,'2012-12-13','2012-12-13 15:04:30',1)
 ,(3073,127,'2012-12-13','2012-12-13 15:05:38',1)
 ,(3074,138,'2012-12-13','2012-12-13 15:05:43',1)
 ,(3075,136,'2012-12-13','2012-12-13 15:05:44',1)
 ,(3076,127,'2012-12-13','2012-12-13 15:06:22',1)
 ,(3077,136,'2012-12-13','2012-12-13 15:07:23',1)
 ,(3078,138,'2012-12-13','2012-12-13 15:07:24',1)
 ,(3079,137,'2012-12-13','2012-12-13 15:07:25',1)
 ,(3080,127,'2012-12-13','2012-12-13 15:08:18',1)
 ,(3081,136,'2012-12-13','2012-12-13 15:08:21',1)
 ,(3082,127,'2012-12-13','2012-12-13 15:08:53',1)
 ,(3083,127,'2012-12-13','2012-12-13 15:08:54',1)
 ,(3084,136,'2012-12-13','2012-12-13 15:08:57',1)
 ,(3085,127,'2012-12-13','2012-12-13 15:09:21',1)
 ,(3086,136,'2012-12-13','2012-12-13 15:09:34',1)
 ,(3087,127,'2012-12-13','2012-12-13 15:09:42',1)
 ,(3088,127,'2012-12-13','2012-12-13 15:09:59',1)
 ,(3089,136,'2012-12-13','2012-12-13 15:10:03',1)
 ,(3090,127,'2012-12-13','2012-12-13 15:10:10',1)
 ,(3091,136,'2012-12-13','2012-12-13 15:10:14',1)
 ,(3092,138,'2012-12-13','2012-12-13 15:10:15',1)
 ,(3093,137,'2012-12-13','2012-12-13 15:10:16',1)
 ,(3094,127,'2012-12-13','2012-12-13 15:10:57',0)
 ,(3095,137,'2012-12-13','2012-12-13 15:11:10',0)
 ,(3096,136,'2012-12-13','2012-12-13 15:11:13',0)
 ,(3097,138,'2012-12-13','2012-12-13 15:11:14',0)
 ,(3098,127,'2012-12-13','2012-12-13 15:11:16',0)
 ,(3099,137,'2012-12-13','2012-12-13 15:11:23',0)
 ,(3100,127,'2012-12-13','2012-12-13 15:11:25',0)
 ,(3101,127,'2012-12-13','2012-12-13 15:11:33',0)
 ,(3102,127,'2012-12-13','2012-12-13 15:11:49',0)
 ,(3103,136,'2012-12-13','2012-12-13 15:11:53',0)
 ,(3104,127,'2012-12-13','2012-12-13 15:11:57',0)
 ,(3105,127,'2012-12-13','2012-12-13 15:12:00',0)
 ,(3106,127,'2012-12-13','2012-12-13 15:12:01',0)
 ,(3107,127,'2012-12-13','2012-12-13 15:12:14',0)
 ,(3108,127,'2012-12-13','2012-12-13 15:12:25',0)
 ,(3109,127,'2012-12-13','2012-12-13 15:14:00',0)
 ,(3110,127,'2012-12-13','2012-12-13 15:14:14',0)
 ,(3111,138,'2012-12-13','2012-12-13 15:14:16',0)
 ,(3112,136,'2012-12-13','2012-12-13 15:14:19',0)
 ,(3113,137,'2012-12-13','2012-12-13 15:14:21',0)
 ,(3114,127,'2012-12-13','2012-12-13 15:14:41',0)
 ,(3115,138,'2012-12-13','2012-12-13 15:14:43',0)
 ,(3116,137,'2012-12-13','2012-12-13 15:14:44',0)
 ,(3117,136,'2012-12-13','2012-12-13 15:14:45',0)
 ,(3118,127,'2012-12-13','2012-12-13 15:50:47',0)
 ,(3119,127,'2012-12-13','2012-12-13 15:50:50',0)
 ,(3120,127,'2012-12-13','2012-12-13 15:51:01',0)
 ,(3121,127,'2012-12-13','2012-12-13 15:51:05',0)
 ,(3122,127,'2012-12-13','2012-12-13 15:51:44',0)
 ,(3123,127,'2012-12-13','2012-12-13 15:51:53',0)
 ,(3124,127,'2012-12-13','2012-12-13 15:51:58',0)
 ,(3125,1,'2012-12-13','2012-12-13 15:52:25',0)
 ,(3126,127,'2012-12-13','2012-12-13 15:52:27',0)
 ,(3127,127,'2012-12-13','2012-12-13 15:52:46',0)
 ,(3128,127,'2012-12-13','2012-12-13 15:53:06',0)
 ,(3129,127,'2012-12-13','2012-12-13 15:53:16',0)
 ,(3130,127,'2012-12-13','2012-12-13 15:53:21',0)
 ,(3131,127,'2012-12-13','2012-12-13 15:53:49',0)
 ,(3132,127,'2012-12-13','2012-12-13 15:53:54',0)
 ,(3133,127,'2012-12-13','2012-12-13 15:54:05',0)
 ,(3134,1,'2012-12-13','2012-12-13 16:10:01',0)
 ,(3135,127,'2012-12-13','2012-12-13 16:10:07',0)
 ,(3136,137,'2012-12-13','2012-12-13 16:10:15',0)
 ,(3137,136,'2012-12-13','2012-12-13 16:10:16',0)
 ,(3138,138,'2012-12-13','2012-12-13 16:10:18',0)
 ,(3139,127,'2012-12-13','2012-12-13 16:11:01',0)
 ,(3140,136,'2012-12-13','2012-12-13 16:11:03',0)
 ,(3141,137,'2012-12-13','2012-12-13 16:11:04',0)
 ,(3142,138,'2012-12-13','2012-12-13 16:11:05',0)
 ,(3143,1,'2012-12-13','2012-12-13 16:20:42',0)
 ,(3144,1,'2012-12-13','2012-12-13 16:20:47',0)
 ,(3145,1,'2012-12-13','2012-12-13 16:20:52',0)
 ,(3146,1,'2012-12-13','2012-12-13 16:20:56',0)
 ,(3147,1,'2012-12-13','2012-12-13 16:21:13',0)
 ,(3148,127,'2012-12-13','2012-12-13 16:21:38',0)
 ,(3149,127,'2012-12-13','2012-12-13 16:21:38',0)
 ,(3150,1,'2012-12-13','2012-12-13 16:22:19',0)
 ,(3151,127,'2012-12-13','2012-12-13 16:22:35',0)
 ,(3152,127,'2012-12-13','2012-12-13 16:22:52',0)
 ,(3153,127,'2012-12-13','2012-12-13 16:23:24',0)
 ,(3154,127,'2012-12-13','2012-12-13 16:23:38',0)
 ,(3155,127,'2012-12-13','2012-12-13 16:23:45',0)
 ,(3156,127,'2012-12-13','2012-12-13 16:24:02',0)
 ,(3157,127,'2012-12-13','2012-12-13 16:24:15',0)
 ,(3158,127,'2012-12-13','2012-12-13 16:25:09',0)
 ,(3159,127,'2012-12-13','2012-12-13 16:25:10',0)
 ,(3160,127,'2012-12-13','2012-12-13 16:25:11',0)
 ,(3161,127,'2012-12-13','2012-12-13 16:25:11',0)
 ,(3162,127,'2012-12-13','2012-12-13 16:25:11',0)
 ,(3163,127,'2012-12-13','2012-12-13 16:25:12',0)
 ,(3164,127,'2012-12-13','2012-12-13 16:25:12',0)
 ,(3165,127,'2012-12-13','2012-12-13 16:25:13',0)
 ,(3166,127,'2012-12-13','2012-12-13 16:25:13',0)
 ,(3167,127,'2012-12-13','2012-12-13 16:25:13',0)
 ,(3168,127,'2012-12-13','2012-12-13 16:25:14',0)
 ,(3169,127,'2012-12-13','2012-12-13 16:25:14',0)
 ,(3170,127,'2012-12-13','2012-12-13 16:25:14',0)
 ,(3171,127,'2012-12-13','2012-12-13 16:25:15',0)
 ,(3172,127,'2012-12-13','2012-12-13 16:25:15',0)
 ,(3173,127,'2012-12-13','2012-12-13 16:25:15',0)
 ,(3174,127,'2012-12-13','2012-12-13 16:25:16',0)
 ,(3175,127,'2012-12-13','2012-12-13 16:25:16',0)
 ,(3176,127,'2012-12-13','2012-12-13 16:25:17',0)
 ,(3177,127,'2012-12-13','2012-12-13 16:25:17',0)
 ,(3178,127,'2012-12-13','2012-12-13 16:26:33',0)
 ,(3179,127,'2012-12-13','2012-12-13 16:26:58',0)
 ,(3180,127,'2012-12-13','2012-12-13 16:27:17',0)
 ,(3181,137,'2012-12-13','2012-12-13 16:27:33',0)
 ,(3182,1,'2012-12-13','2012-12-13 16:27:38',0)
 ,(3183,1,'2012-12-13','2012-12-13 16:28:24',0)
 ,(3184,127,'2012-12-13','2012-12-13 16:28:34',0)
 ,(3185,127,'2012-12-13','2012-12-13 16:28:35',0)
 ,(3186,127,'2012-12-13','2012-12-13 16:28:37',0)
 ,(3187,127,'2012-12-13','2012-12-13 16:28:38',0)
 ,(3188,1,'2012-12-13','2012-12-13 16:29:04',0)
 ,(3189,127,'2012-12-13','2012-12-13 16:29:08',0)
 ,(3190,127,'2012-12-13','2012-12-13 16:29:09',0)
 ,(3191,127,'2012-12-13','2012-12-13 16:29:36',0)
 ,(3192,127,'2012-12-13','2012-12-13 16:29:49',0)
 ,(3193,127,'2012-12-13','2012-12-13 16:30:33',0)
 ,(3194,127,'2012-12-13','2012-12-13 16:30:59',0)
 ,(3195,127,'2012-12-13','2012-12-13 16:31:35',0)
 ,(3196,127,'2012-12-13','2012-12-13 16:31:43',0)
 ,(3197,127,'2012-12-13','2012-12-13 16:32:06',0)
 ,(3198,127,'2012-12-13','2012-12-13 16:32:13',0)
 ,(3199,127,'2012-12-13','2012-12-13 16:32:14',0)
 ,(3200,127,'2012-12-13','2012-12-13 16:32:21',0)
 ,(3201,136,'2012-12-13','2012-12-13 16:32:23',0)
 ,(3202,127,'2012-12-13','2012-12-13 16:32:32',0)
 ,(3203,137,'2012-12-13','2012-12-13 16:32:34',0)
 ,(3204,127,'2012-12-13','2012-12-13 16:32:42',0)
 ,(3205,138,'2012-12-13','2012-12-13 16:32:44',0)
 ,(3206,136,'2012-12-13','2012-12-13 16:32:46',0)
 ,(3207,137,'2012-12-13','2012-12-13 16:32:49',0)
 ,(3208,127,'2012-12-13','2012-12-13 16:32:49',0)
 ,(3209,1,'2012-12-13','2012-12-13 17:03:55',0)
 ,(3210,1,'2012-12-13','2012-12-13 17:04:10',0)
 ,(3211,1,'2012-12-13','2012-12-13 17:04:18',0)
 ,(3212,1,'2012-12-13','2012-12-13 17:04:25',0)
 ,(3213,127,'2012-12-13','2012-12-13 17:04:41',0)
 ,(3214,136,'2012-12-13','2012-12-13 17:04:44',0)
 ,(3215,127,'2012-12-13','2012-12-13 17:04:47',0)
 ,(3216,1,'2012-12-13','2012-12-13 17:06:22',0)
 ,(3217,127,'2012-12-13','2012-12-13 17:06:23',0)
 ,(3218,136,'2012-12-13','2012-12-13 17:06:27',0)
 ,(3219,127,'2012-12-13','2012-12-13 17:06:29',0)
 ,(3220,138,'2012-12-13','2012-12-13 17:06:31',0)
 ,(3221,127,'2012-12-13','2012-12-13 17:06:32',0)
 ,(3222,127,'2012-12-13','2012-12-13 17:07:23',0)
 ,(3223,138,'2012-12-13','2012-12-13 17:07:25',0)
 ,(3224,127,'2012-12-13','2012-12-13 17:07:34',0)
 ,(3225,136,'2012-12-13','2012-12-13 17:07:36',0)
 ,(3226,127,'2012-12-13','2012-12-13 17:07:37',0)
 ,(3227,136,'2012-12-13','2012-12-13 17:07:39',0)
 ,(3228,138,'2012-12-13','2012-12-13 17:07:40',0)
 ,(3229,137,'2012-12-13','2012-12-13 17:07:41',0)
 ,(3230,127,'2012-12-13','2012-12-13 17:07:48',0)
 ,(3231,137,'2012-12-13','2012-12-13 17:07:52',0)
 ,(3232,138,'2012-12-13','2012-12-13 17:07:54',0)
 ,(3233,136,'2012-12-13','2012-12-13 17:07:55',0)
 ,(3234,127,'2012-12-13','2012-12-13 17:08:10',0)
 ,(3235,136,'2012-12-13','2012-12-13 17:08:12',0)
 ,(3236,138,'2012-12-13','2012-12-13 17:08:13',0)
 ,(3237,137,'2012-12-13','2012-12-13 17:08:14',0)
 ,(3238,127,'2012-12-13','2012-12-13 17:09:50',0)
 ,(3239,127,'2012-12-13','2012-12-13 17:10:26',0)
 ,(3240,127,'2012-12-13','2012-12-13 17:10:31',0)
 ,(3241,127,'2012-12-13','2012-12-13 17:10:37',0)
 ,(3242,127,'2012-12-13','2012-12-13 17:10:41',0)
 ,(3243,137,'2012-12-13','2012-12-13 17:10:45',0)
 ,(3244,127,'2012-12-13','2012-12-13 17:10:57',0)
 ,(3245,136,'2012-12-13','2012-12-13 17:11:00',0)
 ,(3246,138,'2012-12-13','2012-12-13 17:11:01',0)
 ,(3247,137,'2012-12-13','2012-12-13 17:11:05',0)
 ,(3248,127,'2012-12-13','2012-12-13 17:11:14',0)
 ,(3249,136,'2012-12-13','2012-12-13 17:11:18',0)
 ,(3250,138,'2012-12-13','2012-12-13 17:11:24',0)
 ,(3251,137,'2012-12-13','2012-12-13 17:11:27',0)
 ,(3252,127,'2012-12-13','2012-12-13 17:21:32',0)
 ,(3253,127,'2012-12-13','2012-12-13 17:24:04',0)
 ,(3254,127,'2012-12-13','2012-12-13 17:24:56',0)
 ,(3255,137,'2012-12-13','2012-12-13 17:27:56',0)
 ,(3256,136,'2012-12-13','2012-12-13 17:27:58',0)
 ,(3257,127,'2012-12-13','2012-12-13 17:28:09',0)
 ,(3258,138,'2012-12-13','2012-12-13 17:28:11',0)
 ,(3259,136,'2012-12-13','2012-12-13 17:28:12',0)
 ,(3260,137,'2012-12-13','2012-12-13 17:28:14',0)
 ,(3261,127,'2012-12-13','2012-12-13 17:28:23',0)
 ,(3262,136,'2012-12-13','2012-12-13 17:28:25',0)
 ,(3263,109,'2012-12-13','2012-12-13 17:37:16',0)
 ,(3264,2,'2012-12-13','2012-12-13 17:37:18',1)
 ,(3265,7,'2012-12-13','2012-12-13 17:37:21',1)
 ,(3266,2,'2012-12-13','2012-12-13 17:37:50',1)
 ,(3267,34,'2012-12-13','2012-12-13 17:37:54',1)
 ,(3268,2,'2012-12-13','2012-12-13 17:38:40',1)
 ,(3269,46,'2012-12-13','2012-12-13 17:39:19',1)
 ,(3270,46,'2012-12-13','2012-12-13 17:39:25',1)
 ,(3271,46,'2012-12-13','2012-12-13 17:39:25',1)
 ,(3272,2,'2012-12-13','2012-12-13 17:39:30',1)
 ,(3273,34,'2012-12-13','2012-12-13 17:39:35',1)
 ,(3274,34,'2012-12-13','2012-12-13 17:39:40',1)
 ,(3275,34,'2012-12-13','2012-12-13 17:40:00',1)
 ,(3276,34,'2012-12-13','2012-12-13 17:40:00',1)
 ,(3277,34,'2012-12-13','2012-12-13 17:40:07',1)
 ,(3278,1,'2012-12-13','2012-12-13 17:40:09',1)
 ,(3279,2,'2012-12-13','2012-12-13 18:06:40',1)
 ,(3280,12,'2012-12-13','2012-12-13 18:06:53',1)
 ,(3281,34,'2012-12-13','2012-12-13 18:06:59',1)
 ,(3282,34,'2012-12-13','2012-12-13 18:07:02',1)
 ,(3283,34,'2012-12-13','2012-12-13 18:07:05',1)
 ,(3284,34,'2012-12-13','2012-12-13 18:07:08',1)
 ,(3285,1,'2012-12-13','2012-12-13 18:07:13',1)
 ,(3286,32,'2012-12-13','2012-12-13 18:07:19',1)
 ,(3287,33,'2012-12-13','2012-12-13 18:07:23',1)
 ,(3288,2,'2012-12-13','2012-12-13 18:21:56',1)
 ,(3289,13,'2012-12-13','2012-12-13 18:22:01',1)
 ,(3290,14,'2012-12-13','2012-12-13 18:22:13',1)
 ,(3291,14,'2012-12-13','2012-12-13 18:22:18',1)
 ,(3292,13,'2012-12-13','2012-12-13 18:22:18',1)
 ,(3293,13,'2012-12-13','2012-12-13 18:22:21',1)
 ,(3294,2,'2012-12-13','2012-12-13 18:22:26',1)
 ,(3295,13,'2012-12-13','2012-12-13 18:22:29',1)
 ,(3296,11,'2012-12-13','2012-12-13 18:23:53',1)
 ,(3297,32,'2012-12-13','2012-12-13 18:24:13',1)
 ,(3298,33,'2012-12-13','2012-12-13 18:24:16',1)
 ,(3299,11,'2012-12-13','2012-12-13 18:25:29',1)
 ,(3300,1,'2012-12-13','2012-12-13 18:25:59',1)
 ,(3301,32,'2012-12-13','2012-12-13 18:26:10',1)
 ,(3302,33,'2012-12-13','2012-12-13 18:26:13',1)
 ,(3303,33,'2012-12-13','2012-12-13 18:26:16',1)
 ,(3304,33,'2012-12-13','2012-12-13 18:26:21',1)
 ,(3305,11,'2012-12-13','2012-12-13 18:27:32',1)
 ,(3306,32,'2012-12-13','2012-12-13 18:28:02',1)
 ,(3307,33,'2012-12-13','2012-12-13 18:28:07',1)
 ,(3308,33,'2012-12-13','2012-12-13 18:28:37',1)
 ,(3309,33,'2012-12-13','2012-12-13 18:28:46',1)
 ,(3310,32,'2012-12-13','2012-12-13 18:28:46',1)
 ,(3311,1,'2012-12-13','2012-12-13 18:28:48',1)
 ,(3312,127,'2012-12-13','2012-12-13 18:28:52',1)
 ,(3313,32,'2012-12-13','2012-12-13 18:29:06',1)
 ,(3314,32,'2012-12-13','2012-12-13 18:29:09',1)
 ,(3315,32,'2012-12-13','2012-12-13 18:29:23',1)
 ,(3316,32,'2012-12-13','2012-12-13 18:29:23',1)
 ,(3317,1,'2012-12-13','2012-12-13 18:29:26',1)
 ,(3318,123,'2012-12-13','2012-12-13 18:29:28',1)
 ,(3319,127,'2012-12-13','2012-12-13 18:29:29',1)
 ,(3320,149,'2012-12-13','2012-12-13 18:30:47',1)
 ,(3321,149,'2012-12-13','2012-12-13 18:30:54',1)
 ,(3322,1,'2012-12-13','2012-12-13 18:31:36',1)
 ,(3323,127,'2012-12-13','2012-12-13 18:31:39',1)
 ,(3324,7,'2012-12-13','2012-12-13 18:31:46',1)
 ,(3325,149,'2012-12-13','2012-12-13 18:31:53',1)
 ,(3326,149,'2012-12-13','2012-12-13 18:31:54',1)
 ,(3327,149,'2012-12-13','2012-12-13 18:32:27',1)
 ,(3328,149,'2012-12-13','2012-12-13 18:32:28',1)
 ,(3329,149,'2012-12-13','2012-12-13 18:32:41',1)
 ,(3330,123,'2012-12-13','2012-12-13 18:32:42',1)
 ,(3331,123,'2012-12-13','2012-12-13 18:33:14',1)
 ,(3332,7,'2012-12-13','2012-12-13 18:33:16',1)
 ,(3333,149,'2012-12-13','2012-12-13 18:33:24',1)
 ,(3334,123,'2012-12-13','2012-12-13 18:33:24',1)
 ,(3335,7,'2012-12-13','2012-12-13 18:33:27',1)
 ,(3336,1,'2012-12-13','2012-12-13 18:34:01',1)
 ,(3337,127,'2012-12-13','2012-12-13 18:34:07',1)
 ,(3338,7,'2012-12-13','2012-12-13 18:34:45',1)
 ,(3339,149,'2012-12-13','2012-12-13 18:34:49',1)
 ,(3340,149,'2012-12-13','2012-12-13 18:35:18',1)
 ,(3341,7,'2012-12-13','2012-12-13 18:36:23',1)
 ,(3342,149,'2012-12-13','2012-12-13 18:36:25',1)
 ,(3343,2,'2012-12-13','2012-12-13 18:36:32',1)
 ,(3344,32,'2012-12-13','2012-12-13 18:36:38',1)
 ,(3345,32,'2012-12-13','2012-12-13 18:36:42',1)
 ,(3346,32,'2012-12-13','2012-12-13 18:36:47',1)
 ,(3347,7,'2012-12-13','2012-12-13 18:36:52',1)
 ,(3348,7,'2012-12-13','2012-12-13 18:39:37',1)
 ,(3349,127,'2012-12-13','2012-12-13 18:39:39',1)
 ,(3350,127,'2012-12-13','2012-12-13 18:41:26',1)
 ,(3351,127,'2012-12-13','2012-12-13 18:42:08',1)
 ,(3352,127,'2012-12-13','2012-12-13 18:44:41',1)
 ,(3353,127,'2012-12-13','2012-12-13 18:44:49',1)
 ,(3354,127,'2012-12-13','2012-12-13 18:46:23',1)
 ,(3355,127,'2012-12-13','2012-12-13 18:46:32',1)
 ,(3356,127,'2012-12-13','2012-12-13 18:47:23',1)
 ,(3357,127,'2012-12-13','2012-12-13 18:47:33',1)
 ,(3358,127,'2012-12-13','2012-12-13 18:50:15',1)
 ,(3359,127,'2012-12-13','2012-12-13 18:50:40',1)
 ,(3360,127,'2012-12-13','2012-12-13 18:50:50',1)
 ,(3361,127,'2012-12-13','2012-12-13 18:50:58',1)
 ,(3362,127,'2012-12-13','2012-12-13 18:51:17',1)
 ,(3363,123,'2012-12-13','2012-12-13 18:51:22',1)
 ,(3364,127,'2012-12-13','2012-12-13 18:51:30',1)
 ,(3365,127,'2012-12-13','2012-12-13 18:52:26',1)
 ,(3366,123,'2012-12-13','2012-12-13 18:52:28',1)
 ,(3367,127,'2012-12-13','2012-12-13 18:52:32',1)
 ,(3368,127,'2012-12-13','2012-12-13 18:52:37',1)
 ,(3369,127,'2012-12-13','2012-12-13 18:53:22',1)
 ,(3370,123,'2012-12-13','2012-12-13 18:53:25',1)
 ,(3371,127,'2012-12-13','2012-12-13 18:53:29',1)
 ,(3372,138,'2012-12-13','2012-12-13 18:53:31',1)
 ,(3373,127,'2012-12-13','2012-12-13 18:53:55',1)
 ,(3374,127,'2012-12-13','2012-12-13 18:55:04',1)
 ,(3375,127,'2012-12-13','2012-12-13 18:56:17',1)
 ,(3376,127,'2012-12-13','2012-12-13 18:56:31',1)
 ,(3377,127,'2012-12-13','2012-12-13 18:57:02',1)
 ,(3378,127,'2012-12-13','2012-12-13 18:57:43',1)
 ,(3379,127,'2012-12-13','2012-12-13 18:57:52',1)
 ,(3380,1,'2012-12-13','2012-12-13 18:58:43',1)
 ,(3381,127,'2012-12-13','2012-12-13 18:58:46',1)
 ,(3382,123,'2012-12-13','2012-12-13 18:59:04',1)
 ,(3383,7,'2012-12-13','2012-12-13 18:59:09',1)
 ,(3384,127,'2012-12-13','2012-12-13 18:59:30',1)
 ,(3385,127,'2012-12-13','2012-12-13 18:59:56',1)
 ,(3386,127,'2012-12-13','2012-12-13 19:00:00',1)
 ,(3387,127,'2012-12-13','2012-12-13 19:01:14',1)
 ,(3388,1,'2012-12-14','2012-12-14 10:56:26',0)
 ,(3389,127,'2012-12-14','2012-12-14 10:59:03',0)
 ,(3390,123,'2012-12-14','2012-12-14 10:59:36',0)
 ,(3391,127,'2012-12-14','2012-12-14 10:59:38',0)
 ,(3392,138,'2012-12-14','2012-12-14 10:59:50',0)
 ,(3393,127,'2012-12-14','2012-12-14 11:01:46',0)
 ,(3394,136,'2012-12-14','2012-12-14 11:01:58',0)
 ,(3395,127,'2012-12-14','2012-12-14 11:02:31',0)
 ,(3396,127,'2012-12-14','2012-12-14 11:03:01',0)
 ,(3397,127,'2012-12-14','2012-12-14 11:03:09',0)
 ,(3398,127,'2012-12-14','2012-12-14 11:03:20',0)
 ,(3399,127,'2012-12-14','2012-12-14 11:03:37',0)
 ,(3400,127,'2012-12-14','2012-12-14 11:04:08',0)
 ,(3401,127,'2012-12-14','2012-12-14 11:04:17',0)
 ,(3402,127,'2012-12-14','2012-12-14 11:04:50',0)
 ,(3403,127,'2012-12-14','2012-12-14 11:05:00',0)
 ,(3404,127,'2012-12-14','2012-12-14 11:05:07',0)
 ,(3405,127,'2012-12-14','2012-12-14 11:05:17',0)
 ,(3406,127,'2012-12-14','2012-12-14 11:05:53',0)
 ,(3407,127,'2012-12-14','2012-12-14 11:05:58',0)
 ,(3408,127,'2012-12-14','2012-12-14 11:06:02',0)
 ,(3409,127,'2012-12-14','2012-12-14 11:06:05',0)
 ,(3410,127,'2012-12-14','2012-12-14 11:06:08',0)
 ,(3411,127,'2012-12-14','2012-12-14 11:06:12',0)
 ,(3412,127,'2012-12-14','2012-12-14 11:06:18',0)
 ,(3413,127,'2012-12-14','2012-12-14 11:06:25',0)
 ,(3414,127,'2012-12-14','2012-12-14 11:06:37',0)
 ,(3415,127,'2012-12-14','2012-12-14 11:06:58',0)
 ,(3416,136,'2012-12-14','2012-12-14 11:07:10',0)
 ,(3417,127,'2012-12-14','2012-12-14 11:07:58',0)
 ,(3418,127,'2012-12-14','2012-12-14 11:08:55',0)
 ,(3419,127,'2012-12-14','2012-12-14 11:09:00',0)
 ,(3420,127,'2012-12-14','2012-12-14 11:09:07',0)
 ,(3421,127,'2012-12-14','2012-12-14 11:10:04',0)
 ,(3422,127,'2012-12-14','2012-12-14 11:10:19',0)
 ,(3423,127,'2012-12-14','2012-12-14 11:10:42',0)
 ,(3424,127,'2012-12-14','2012-12-14 11:23:28',0)
 ,(3425,127,'2012-12-14','2012-12-14 11:23:37',0)
 ,(3426,127,'2012-12-14','2012-12-14 11:23:40',0)
 ,(3427,127,'2012-12-14','2012-12-14 11:23:48',0)
 ,(3428,127,'2012-12-14','2012-12-14 11:23:59',0)
 ,(3429,127,'2012-12-14','2012-12-14 11:24:43',0)
 ,(3430,127,'2012-12-14','2012-12-14 11:24:43',0)
 ,(3431,127,'2012-12-14','2012-12-14 11:25:01',0)
 ,(3432,127,'2012-12-14','2012-12-14 11:25:10',0)
 ,(3433,127,'2012-12-14','2012-12-14 11:25:14',0)
 ,(3434,127,'2012-12-14','2012-12-14 11:25:22',0)
 ,(3435,127,'2012-12-14','2012-12-14 11:25:40',0)
 ,(3436,127,'2012-12-14','2012-12-14 11:26:07',0)
 ,(3437,127,'2012-12-14','2012-12-14 11:26:25',0)
 ,(3438,127,'2012-12-14','2012-12-14 11:26:37',0)
 ,(3439,127,'2012-12-14','2012-12-14 11:26:52',0)
 ,(3440,127,'2012-12-14','2012-12-14 11:27:17',0)
 ,(3441,127,'2012-12-14','2012-12-14 11:27:24',0)
 ,(3442,1,'2012-12-14','2012-12-14 11:40:37',0)
 ,(3443,1,'2012-12-14','2012-12-14 11:40:43',0)
 ,(3444,127,'2012-12-14','2012-12-14 11:41:15',0)
 ,(3445,127,'2012-12-14','2012-12-14 11:42:49',0)
 ,(3446,127,'2012-12-14','2012-12-14 11:42:52',0)
 ,(3447,127,'2012-12-14','2012-12-14 11:42:59',0)
 ,(3448,127,'2012-12-14','2012-12-14 11:43:07',0)
 ,(3449,127,'2012-12-14','2012-12-14 11:43:07',0)
 ,(3450,127,'2012-12-14','2012-12-14 11:43:08',0)
 ,(3451,127,'2012-12-14','2012-12-14 11:43:08',0)
 ,(3452,127,'2012-12-14','2012-12-14 11:43:09',0)
 ,(3453,127,'2012-12-14','2012-12-14 11:43:09',0)
 ,(3454,127,'2012-12-14','2012-12-14 11:43:09',0)
 ,(3455,127,'2012-12-14','2012-12-14 11:43:10',0)
 ,(3456,127,'2012-12-14','2012-12-14 11:43:10',0)
 ,(3457,127,'2012-12-14','2012-12-14 11:43:23',0)
 ,(3458,127,'2012-12-14','2012-12-14 11:43:51',0)
 ,(3459,127,'2012-12-14','2012-12-14 11:43:59',0)
 ,(3460,127,'2012-12-14','2012-12-14 11:44:40',0)
 ,(3461,127,'2012-12-14','2012-12-14 11:44:43',0)
 ,(3462,127,'2012-12-14','2012-12-14 11:45:47',0)
 ,(3463,127,'2012-12-14','2012-12-14 11:45:55',0)
 ,(3464,127,'2012-12-14','2012-12-14 11:46:06',0)
 ,(3465,127,'2012-12-14','2012-12-14 11:46:28',0)
 ,(3466,127,'2012-12-14','2012-12-14 11:46:35',0)
 ,(3467,127,'2012-12-14','2012-12-14 11:46:41',0)
 ,(3468,127,'2012-12-14','2012-12-14 11:46:41',0)
 ,(3469,127,'2012-12-14','2012-12-14 11:46:42',0)
 ,(3470,127,'2012-12-14','2012-12-14 11:46:42',0)
 ,(3471,127,'2012-12-14','2012-12-14 11:46:43',0)
 ,(3472,127,'2012-12-14','2012-12-14 11:46:43',0)
 ,(3473,127,'2012-12-14','2012-12-14 11:46:43',0)
 ,(3474,127,'2012-12-14','2012-12-14 11:46:44',0)
 ,(3475,127,'2012-12-14','2012-12-14 11:46:44',0)
 ,(3476,127,'2012-12-14','2012-12-14 11:46:45',0)
 ,(3477,127,'2012-12-14','2012-12-14 11:46:45',0)
 ,(3478,127,'2012-12-14','2012-12-14 11:46:45',0)
 ,(3479,127,'2012-12-14','2012-12-14 11:46:46',0)
 ,(3480,127,'2012-12-14','2012-12-14 11:46:46',0)
 ,(3481,127,'2012-12-14','2012-12-14 11:46:47',0)
 ,(3482,127,'2012-12-14','2012-12-14 11:46:47',0)
 ,(3483,127,'2012-12-14','2012-12-14 11:46:48',0)
 ,(3484,127,'2012-12-14','2012-12-14 11:48:20',0)
 ,(3485,127,'2012-12-14','2012-12-14 11:49:02',0)
 ,(3486,127,'2012-12-14','2012-12-14 11:49:11',0)
 ,(3487,127,'2012-12-14','2012-12-14 11:50:01',0)
 ,(3488,127,'2012-12-14','2012-12-14 11:51:29',0)
 ,(3489,127,'2012-12-14','2012-12-14 11:51:49',0)
 ,(3490,123,'2012-12-14','2012-12-14 13:26:08',0)
 ,(3491,127,'2012-12-14','2012-12-14 13:26:12',0)
 ,(3492,127,'2012-12-14','2012-12-14 13:32:08',0)
 ,(3493,1,'2012-12-14','2012-12-14 13:32:19',0)
 ,(3494,109,'2012-12-14','2012-12-14 13:32:27',0)
 ,(3495,2,'2012-12-14','2012-12-14 13:32:28',1)
 ,(3496,127,'2012-12-14','2012-12-14 13:32:31',1)
 ,(3497,104,'2012-12-14','2012-12-14 13:32:32',1)
 ,(3498,127,'2012-12-14','2012-12-14 13:32:36',1)
 ,(3499,127,'2012-12-14','2012-12-14 13:32:47',1)
 ,(3500,149,'2012-12-14','2012-12-14 13:32:57',1)
 ,(3501,1,'2012-12-14','2012-12-14 13:33:04',1)
 ,(3502,127,'2012-12-14','2012-12-14 13:33:07',1)
 ,(3503,127,'2012-12-14','2012-12-14 13:33:14',1)
 ,(3504,109,'2012-12-14','2012-12-14 13:33:42',1)
 ,(3505,1,'2012-12-14','2012-12-14 13:33:42',0)
 ,(3506,127,'2012-12-14','2012-12-14 13:33:47',0)
 ,(3507,127,'2012-12-14','2012-12-14 13:34:33',0)
 ,(3508,127,'2012-12-14','2012-12-14 13:36:20',0)
 ,(3509,109,'2012-12-14','2012-12-14 13:36:34',0)
 ,(3510,2,'2012-12-14','2012-12-14 13:36:35',1)
 ,(3511,127,'2012-12-14','2012-12-14 13:36:35',0)
 ,(3512,127,'2012-12-14','2012-12-14 13:36:38',1)
 ,(3513,149,'2012-12-14','2012-12-14 13:37:30',1)
 ,(3514,149,'2012-12-14','2012-12-14 13:39:15',1)
 ,(3515,149,'2012-12-14','2012-12-14 13:39:19',1)
 ,(3516,149,'2012-12-14','2012-12-14 13:40:16',1)
 ,(3517,149,'2012-12-14','2012-12-14 13:40:25',1)
 ,(3518,127,'2012-12-14','2012-12-14 13:40:58',1)
 ,(3519,149,'2012-12-14','2012-12-14 13:41:00',1)
 ,(3520,149,'2012-12-14','2012-12-14 13:41:25',1)
 ,(3521,149,'2012-12-14','2012-12-14 13:41:44',1)
 ,(3522,149,'2012-12-14','2012-12-14 13:42:38',1)
 ,(3523,149,'2012-12-14','2012-12-14 13:42:45',1)
 ,(3524,2,'2012-12-14','2012-12-14 13:42:54',1)
 ,(3525,34,'2012-12-14','2012-12-14 13:43:00',1)
 ,(3526,88,'2012-12-14','2012-12-14 13:43:05',1)
 ,(3527,88,'2012-12-14','2012-12-14 13:43:14',1)
 ,(3528,88,'2012-12-14','2012-12-14 13:43:14',1)
 ,(3529,2,'2012-12-14','2012-12-14 13:43:22',1)
 ,(3530,12,'2012-12-14','2012-12-14 13:43:25',1)
 ,(3531,34,'2012-12-14','2012-12-14 13:43:30',1)
 ,(3532,34,'2012-12-14','2012-12-14 13:43:35',1)
 ,(3533,34,'2012-12-14','2012-12-14 13:43:49',1)
 ,(3534,34,'2012-12-14','2012-12-14 13:43:49',1)
 ,(3535,34,'2012-12-14','2012-12-14 13:43:53',1)
 ,(3536,34,'2012-12-14','2012-12-14 13:44:06',1)
 ,(3537,34,'2012-12-14','2012-12-14 13:44:06',1)
 ,(3538,32,'2012-12-14','2012-12-14 13:44:13',1)
 ,(3539,32,'2012-12-14','2012-12-14 13:44:16',1)
 ,(3540,32,'2012-12-14','2012-12-14 13:44:23',1)
 ,(3541,32,'2012-12-14','2012-12-14 13:44:23',1)
 ,(3542,2,'2012-12-14','2012-12-14 13:44:25',1)
 ,(3543,1,'2012-12-14','2012-12-14 13:44:28',1)
 ,(3544,127,'2012-12-14','2012-12-14 13:44:32',1)
 ,(3545,123,'2012-12-14','2012-12-14 13:44:34',1)
 ,(3546,123,'2012-12-14','2012-12-14 13:44:38',1)
 ,(3547,123,'2012-12-14','2012-12-14 13:44:42',1)
 ,(3548,123,'2012-12-14','2012-12-14 13:44:44',1)
 ,(3549,127,'2012-12-14','2012-12-14 13:45:11',1)
 ,(3550,127,'2012-12-14','2012-12-14 13:45:15',1)
 ,(3551,149,'2012-12-14','2012-12-14 13:45:18',1)
 ,(3552,149,'2012-12-14','2012-12-14 13:45:56',1)
 ,(3553,149,'2012-12-14','2012-12-14 13:46:00',1)
 ,(3554,127,'2012-12-14','2012-12-14 13:46:05',1)
 ,(3555,127,'2012-12-14','2012-12-14 13:49:22',1)
 ,(3556,127,'2012-12-14','2012-12-14 13:49:31',1)
 ,(3557,127,'2012-12-14','2012-12-14 13:50:04',1)
 ,(3558,127,'2012-12-14','2012-12-14 13:50:49',1)
 ,(3559,127,'2012-12-14','2012-12-14 13:51:08',1)
 ,(3560,136,'2012-12-14','2012-12-14 13:51:46',1)
 ,(3561,136,'2012-12-14','2012-12-14 14:25:29',1)
 ,(3562,127,'2012-12-14','2012-12-14 14:25:43',1)
 ,(3563,127,'2012-12-14','2012-12-14 14:25:47',1)
 ,(3564,127,'2012-12-14','2012-12-14 14:26:01',1)
 ,(3565,127,'2012-12-14','2012-12-14 14:26:26',1)
 ,(3566,136,'2012-12-14','2012-12-14 14:26:31',1)
 ,(3567,127,'2012-12-14','2012-12-14 14:26:35',1)
 ,(3568,127,'2012-12-14','2012-12-14 14:26:40',1)
 ,(3569,136,'2012-12-14','2012-12-14 14:26:46',1)
 ,(3570,127,'2012-12-14','2012-12-14 14:27:21',1)
 ,(3571,136,'2012-12-14','2012-12-14 14:27:25',1)
 ,(3572,127,'2012-12-14','2012-12-14 14:35:10',1)
 ,(3573,127,'2012-12-14','2012-12-14 14:35:21',1)
 ,(3574,136,'2012-12-14','2012-12-14 14:35:41',1)
 ,(3575,109,'2012-12-14','2012-12-14 14:35:46',1)
 ,(3576,1,'2012-12-14','2012-12-14 14:35:46',0)
 ,(3577,127,'2012-12-14','2012-12-14 14:35:48',0)
 ,(3578,123,'2012-12-14','2012-12-14 14:35:50',0)
 ,(3579,127,'2012-12-14','2012-12-14 14:35:52',0)
 ,(3580,138,'2012-12-14','2012-12-14 14:35:54',0)
 ,(3581,136,'2012-12-14','2012-12-14 14:35:55',0)
 ,(3582,123,'2012-12-14','2012-12-14 14:35:55',0)
 ,(3583,127,'2012-12-14','2012-12-14 14:35:57',0)
 ,(3584,123,'2012-12-14','2012-12-14 14:35:58',0)
 ,(3585,127,'2012-12-14','2012-12-14 14:36:01',0)
 ,(3586,136,'2012-12-14','2012-12-14 14:36:02',0)
 ,(3587,138,'2012-12-14','2012-12-14 14:36:04',0)
 ,(3588,1,'2012-12-17','2012-12-17 12:43:44',0)
 ,(3589,127,'2012-12-17','2012-12-17 12:43:49',0)
 ,(3590,137,'2012-12-17','2012-12-17 12:44:27',0)
 ,(3591,127,'2012-12-17','2012-12-17 12:45:03',0)
 ,(3592,127,'2012-12-17','2012-12-17 12:45:08',0)
 ,(3593,127,'2012-12-17','2012-12-17 12:46:20',0)
 ,(3594,127,'2012-12-17','2012-12-17 12:46:25',0)
 ,(3595,127,'2012-12-17','2012-12-17 12:47:10',0)
 ,(3596,127,'2012-12-17','2012-12-17 12:47:14',0)
 ,(3597,127,'2012-12-17','2012-12-17 12:47:38',0)
 ,(3598,127,'2012-12-17','2012-12-17 12:47:46',0)
 ,(3599,138,'2012-12-17','2012-12-17 12:47:57',0)
 ,(3600,136,'2012-12-17','2012-12-17 12:48:02',0)
 ,(3601,127,'2012-12-17','2012-12-17 12:48:40',0)
 ,(3602,127,'2012-12-17','2012-12-17 12:49:25',0)
 ,(3603,127,'2012-12-17','2012-12-17 12:49:49',0)
 ,(3604,127,'2012-12-17','2012-12-17 12:49:56',0)
 ,(3605,127,'2012-12-17','2012-12-17 12:50:10',0)
 ,(3606,136,'2012-12-17','2012-12-17 12:50:24',0)
 ,(3607,127,'2012-12-17','2012-12-17 12:50:39',0)
 ,(3608,127,'2012-12-17','2012-12-17 12:50:50',0)
 ,(3609,127,'2012-12-17','2012-12-17 12:51:27',0)
 ,(3610,127,'2012-12-17','2012-12-17 12:51:34',0)
 ,(3611,127,'2012-12-17','2012-12-17 12:51:37',0)
 ,(3612,127,'2012-12-17','2012-12-17 12:51:53',0)
 ,(3613,127,'2012-12-17','2012-12-17 12:52:13',0)
 ,(3614,123,'2012-12-17','2012-12-17 12:52:21',0)
 ,(3615,127,'2012-12-17','2012-12-17 12:52:24',0)
 ,(3616,137,'2012-12-17','2012-12-17 12:52:27',0)
 ,(3617,127,'2012-12-17','2012-12-17 12:53:07',0)
 ,(3618,127,'2012-12-17','2012-12-17 12:53:08',0)
 ,(3619,137,'2012-12-17','2012-12-17 12:53:11',0)
 ,(3620,127,'2012-12-17','2012-12-17 12:53:33',0)
 ,(3621,138,'2012-12-17','2012-12-17 12:53:35',0)
 ,(3622,127,'2012-12-17','2012-12-17 12:53:54',0)
 ,(3623,123,'2012-12-17','2012-12-17 12:53:56',0)
 ,(3624,127,'2012-12-17','2012-12-17 12:53:58',0)
 ,(3625,137,'2012-12-17','2012-12-17 12:54:00',0)
 ,(3626,127,'2012-12-17','2012-12-17 12:54:34',0)
 ,(3627,123,'2012-12-17','2012-12-17 12:54:36',0)
 ,(3628,127,'2012-12-17','2012-12-17 12:54:38',0)
 ,(3629,137,'2012-12-17','2012-12-17 12:54:39',0)
 ,(3630,127,'2012-12-17','2012-12-17 12:55:00',0)
 ,(3631,138,'2012-12-17','2012-12-17 12:55:03',0)
 ,(3632,127,'2012-12-17','2012-12-17 12:55:11',0)
 ,(3633,138,'2012-12-17','2012-12-17 12:55:13',0)
 ,(3634,127,'2012-12-17','2012-12-17 12:55:27',0)
 ,(3635,136,'2012-12-17','2012-12-17 12:55:29',0)
 ,(3636,127,'2012-12-17','2012-12-17 12:56:09',0)
 ,(3637,123,'2012-12-17','2012-12-17 12:56:11',0)
 ,(3638,127,'2012-12-17','2012-12-17 12:56:13',0)
 ,(3639,136,'2012-12-17','2012-12-17 12:56:14',0)
 ,(3640,127,'2012-12-17','2012-12-17 12:56:20',0)
 ,(3641,136,'2012-12-17','2012-12-17 12:56:22',0)
 ,(3642,137,'2012-12-17','2012-12-17 12:56:27',0)
 ,(3643,138,'2012-12-17','2012-12-17 12:56:29',0)
 ,(3644,123,'2012-12-17','2012-12-17 12:56:30',0)
 ,(3645,127,'2012-12-17','2012-12-17 12:56:32',0)
 ,(3646,136,'2012-12-17','2012-12-17 12:56:34',0)
 ,(3647,127,'2012-12-17','2012-12-17 12:56:51',0)
 ,(3648,136,'2012-12-17','2012-12-17 12:56:53',0)
 ,(3649,127,'2012-12-17','2012-12-17 12:57:29',0)
 ,(3650,136,'2012-12-17','2012-12-17 12:57:31',0)
 ,(3651,137,'2012-12-17','2012-12-17 12:57:32',0)
 ,(3652,138,'2012-12-17','2012-12-17 12:57:35',0)
 ,(3653,127,'2012-12-17','2012-12-17 12:57:46',0)
 ,(3654,136,'2012-12-17','2012-12-17 12:57:50',0)
 ,(3655,137,'2012-12-17','2012-12-17 12:57:59',0)
 ,(3656,138,'2012-12-17','2012-12-17 12:58:01',0)
 ,(3657,1,'2012-12-17','2012-12-17 13:54:48',0)
 ,(3658,127,'2012-12-17','2012-12-17 13:54:53',0)
 ,(3659,136,'2012-12-17','2012-12-17 13:54:56',0)
 ,(3660,127,'2012-12-17','2012-12-17 13:57:08',0)
 ,(3661,138,'2012-12-17','2012-12-17 13:57:22',0)
 ,(3662,136,'2012-12-17','2012-12-17 13:57:29',0)
 ,(3663,127,'2012-12-17','2012-12-17 13:58:45',0)
 ,(3664,136,'2012-12-17','2012-12-17 13:58:48',0)
 ,(3665,127,'2012-12-17','2012-12-17 13:58:57',0)
 ,(3666,136,'2012-12-17','2012-12-17 13:59:12',0)
 ,(3667,137,'2012-12-17','2012-12-17 13:59:17',0)
 ,(3668,138,'2012-12-17','2012-12-17 13:59:25',0)
 ,(3669,127,'2012-12-17','2012-12-17 13:59:46',0)
 ,(3670,136,'2012-12-17','2012-12-17 13:59:50',0)
 ,(3671,136,'2012-12-17','2012-12-17 14:00:18',0)
 ,(3672,127,'2012-12-17','2012-12-17 14:00:19',0)
 ,(3673,136,'2012-12-17','2012-12-17 14:00:20',0)
 ,(3674,127,'2012-12-17','2012-12-17 14:00:36',0)
 ,(3675,136,'2012-12-17','2012-12-17 14:00:38',0)
 ,(3676,136,'2012-12-17','2012-12-17 14:00:57',0)
 ,(3677,127,'2012-12-17','2012-12-17 14:00:58',0)
 ,(3678,136,'2012-12-17','2012-12-17 14:00:59',0)
 ,(3679,127,'2012-12-17','2012-12-17 14:06:09',0)
 ,(3680,136,'2012-12-17','2012-12-17 14:06:15',0)
 ,(3681,127,'2012-12-17','2012-12-17 14:08:50',0)
 ,(3682,136,'2012-12-17','2012-12-17 14:08:55',0)
 ,(3683,127,'2012-12-17','2012-12-17 14:09:09',0)
 ,(3684,127,'2012-12-17','2012-12-17 14:09:10',0)
 ,(3685,136,'2012-12-17','2012-12-17 14:09:16',0)
 ,(3686,127,'2012-12-17','2012-12-17 14:10:00',0)
 ,(3687,136,'2012-12-17','2012-12-17 14:10:02',0)
 ,(3688,127,'2012-12-17','2012-12-17 14:10:21',0)
 ,(3689,127,'2012-12-17','2012-12-17 14:11:52',0)
 ,(3690,127,'2012-12-17','2012-12-17 14:12:08',0)
 ,(3691,127,'2012-12-17','2012-12-17 14:12:35',0)
 ,(3692,136,'2012-12-17','2012-12-17 14:12:39',0)
 ,(3693,127,'2012-12-17','2012-12-17 14:13:42',0)
 ,(3694,136,'2012-12-17','2012-12-17 14:13:44',0)
 ,(3695,127,'2012-12-17','2012-12-17 14:14:23',0)
 ,(3696,136,'2012-12-17','2012-12-17 14:14:25',0)
 ,(3697,127,'2012-12-17','2012-12-17 14:14:43',0)
 ,(3698,136,'2012-12-17','2012-12-17 14:14:45',0)
 ,(3699,127,'2012-12-17','2012-12-17 14:15:09',0)
 ,(3700,136,'2012-12-17','2012-12-17 14:15:11',0)
 ,(3701,127,'2012-12-17','2012-12-17 14:15:52',0)
 ,(3702,136,'2012-12-17','2012-12-17 14:15:55',0)
 ,(3703,127,'2012-12-17','2012-12-17 14:17:43',0)
 ,(3704,136,'2012-12-17','2012-12-17 14:17:46',0)
 ,(3705,127,'2012-12-17','2012-12-17 14:18:18',0)
 ,(3706,136,'2012-12-17','2012-12-17 14:20:06',0)
 ,(3707,127,'2012-12-17','2012-12-17 14:21:11',0)
 ,(3708,136,'2012-12-17','2012-12-17 14:21:22',0)
 ,(3709,136,'2012-12-17','2012-12-17 14:21:26',0)
 ,(3710,127,'2012-12-17','2012-12-17 14:21:27',0)
 ,(3711,136,'2012-12-17','2012-12-17 14:21:28',0)
 ,(3712,137,'2012-12-17','2012-12-17 14:21:34',0)
 ,(3713,123,'2012-12-17','2012-12-17 14:21:35',0)
 ,(3714,123,'2012-12-17','2012-12-17 14:21:36',0)
 ,(3715,127,'2012-12-17','2012-12-17 14:21:39',0)
 ,(3716,136,'2012-12-17','2012-12-17 14:21:41',0)
 ,(3717,127,'2012-12-17','2012-12-17 14:21:42',0)
 ,(3718,136,'2012-12-17','2012-12-17 14:21:44',0)
 ,(3719,127,'2012-12-17','2012-12-17 14:22:35',0)
 ,(3720,136,'2012-12-17','2012-12-17 14:22:37',0)
 ,(3721,127,'2012-12-17','2012-12-17 14:23:27',0)
 ,(3722,136,'2012-12-17','2012-12-17 14:23:29',0)
 ,(3723,127,'2012-12-17','2012-12-17 14:24:55',0)
 ,(3724,137,'2012-12-17','2012-12-17 14:24:58',0)
 ,(3725,136,'2012-12-17','2012-12-17 14:24:59',0)
 ,(3726,127,'2012-12-17','2012-12-17 14:25:33',0)
 ,(3727,136,'2012-12-17','2012-12-17 14:25:35',0)
 ,(3728,127,'2012-12-17','2012-12-17 14:27:09',0)
 ,(3729,136,'2012-12-17','2012-12-17 14:27:11',0)
 ,(3730,137,'2012-12-17','2012-12-17 14:27:31',0)
 ,(3731,127,'2012-12-17','2012-12-17 14:29:19',0)
 ,(3732,136,'2012-12-17','2012-12-17 14:29:22',0)
 ,(3733,127,'2012-12-17','2012-12-17 14:30:41',0)
 ,(3734,127,'2012-12-17','2012-12-17 14:30:42',0)
 ,(3735,136,'2012-12-17','2012-12-17 14:30:45',0)
 ,(3736,127,'2012-12-17','2012-12-17 14:31:08',0)
 ,(3737,136,'2012-12-17','2012-12-17 14:31:10',0)
 ,(3738,127,'2012-12-17','2012-12-17 14:31:34',0)
 ,(3739,136,'2012-12-17','2012-12-17 14:31:36',0)
 ,(3740,127,'2012-12-17','2012-12-17 14:32:18',0)
 ,(3741,136,'2012-12-17','2012-12-17 14:32:20',0)
 ,(3742,127,'2012-12-17','2012-12-17 14:32:38',0)
 ,(3743,127,'2012-12-17','2012-12-17 14:32:39',0)
 ,(3744,136,'2012-12-17','2012-12-17 14:32:41',0)
 ,(3745,127,'2012-12-17','2012-12-17 14:33:33',0)
 ,(3746,136,'2012-12-17','2012-12-17 14:33:36',0)
 ,(3747,127,'2012-12-17','2012-12-17 14:33:53',0)
 ,(3748,136,'2012-12-17','2012-12-17 14:33:56',0)
 ,(3749,127,'2012-12-17','2012-12-17 14:34:24',0)
 ,(3750,136,'2012-12-17','2012-12-17 14:34:27',0)
 ,(3751,127,'2012-12-17','2012-12-17 14:35:11',0)
 ,(3752,136,'2012-12-17','2012-12-17 14:35:13',0)
 ,(3753,127,'2012-12-17','2012-12-17 14:35:36',0)
 ,(3754,136,'2012-12-17','2012-12-17 14:35:39',0)
 ,(3755,127,'2012-12-17','2012-12-17 14:36:07',0)
 ,(3756,136,'2012-12-17','2012-12-17 14:36:10',0)
 ,(3757,127,'2012-12-17','2012-12-17 14:36:18',0)
 ,(3758,136,'2012-12-17','2012-12-17 14:36:21',0)
 ,(3759,127,'2012-12-17','2012-12-17 14:37:52',0)
 ,(3760,136,'2012-12-17','2012-12-17 14:37:55',0)
 ,(3761,127,'2012-12-17','2012-12-17 14:38:18',0)
 ,(3762,137,'2012-12-17','2012-12-17 14:38:21',0)
 ,(3763,136,'2012-12-17','2012-12-17 14:38:22',0)
 ,(3764,127,'2012-12-17','2012-12-17 14:38:33',0)
 ,(3765,136,'2012-12-17','2012-12-17 14:38:36',0)
 ,(3766,127,'2012-12-17','2012-12-17 14:38:47',0)
 ,(3767,136,'2012-12-17','2012-12-17 14:38:49',0)
 ,(3768,127,'2012-12-17','2012-12-17 14:41:00',0)
 ,(3769,109,'2012-12-17','2012-12-17 14:42:11',0)
 ,(3770,2,'2012-12-17','2012-12-17 14:42:12',1)
 ,(3771,104,'2012-12-17','2012-12-17 14:42:15',1)
 ,(3772,127,'2012-12-17','2012-12-17 14:42:27',1)
 ,(3773,127,'2012-12-17','2012-12-17 14:42:31',1)
 ,(3774,127,'2012-12-17','2012-12-17 14:43:22',1)
 ,(3775,127,'2012-12-17','2012-12-17 14:51:57',1)
 ,(3776,127,'2012-12-17','2012-12-17 14:52:02',1)
 ,(3777,109,'2012-12-17','2012-12-17 14:52:05',1)
 ,(3778,1,'2012-12-17','2012-12-17 14:52:06',0)
 ,(3779,127,'2012-12-17','2012-12-17 14:52:09',0)
 ,(3780,136,'2012-12-17','2012-12-17 14:52:11',0)
 ,(3781,137,'2012-12-17','2012-12-17 14:53:14',0)
 ,(3782,138,'2012-12-17','2012-12-17 14:53:17',0)
 ,(3783,127,'2012-12-17','2012-12-17 14:54:31',0)
 ,(3784,136,'2012-12-17','2012-12-17 14:54:33',0)
 ,(3785,138,'2012-12-17','2012-12-17 14:54:38',0)
 ,(3786,127,'2012-12-17','2012-12-17 14:55:02',0)
 ,(3787,136,'2012-12-17','2012-12-17 14:55:04',0)
 ,(3788,127,'2012-12-17','2012-12-17 14:55:08',0)
 ,(3789,136,'2012-12-17','2012-12-17 14:55:10',0)
 ,(3790,127,'2012-12-17','2012-12-17 14:55:57',0)
 ,(3791,127,'2012-12-17','2012-12-17 15:02:47',0)
 ,(3792,127,'2012-12-17','2012-12-17 15:04:35',0)
 ,(3793,127,'2012-12-17','2012-12-17 15:05:09',0)
 ,(3794,136,'2012-12-17','2012-12-17 15:07:01',0)
 ,(3795,123,'2012-12-17','2012-12-17 15:07:03',0)
 ,(3796,1,'2012-12-17','2012-12-17 15:07:06',0)
 ,(3797,127,'2012-12-17','2012-12-17 15:07:08',0)
 ,(3798,109,'2012-12-17','2012-12-17 15:09:52',0)
 ,(3799,7,'2012-12-17','2012-12-17 15:09:53',1)
 ,(3800,6,'2012-12-17','2012-12-17 15:10:24',1)
 ,(3801,7,'2012-12-17','2012-12-17 15:10:24',1)
 ,(3802,1,'2012-12-17','2012-12-17 15:11:01',1)
 ,(3803,150,'2012-12-17','2012-12-17 15:11:04',1)
 ,(3804,150,'2012-12-17','2012-12-17 15:11:41',1)
 ,(3805,7,'2012-12-17','2012-12-17 15:18:03',1)
 ,(3806,32,'2012-12-17','2012-12-17 15:18:09',1)
 ,(3807,33,'2012-12-17','2012-12-17 15:18:13',1)
 ,(3808,33,'2012-12-17','2012-12-17 15:18:33',1)
 ,(3809,32,'2012-12-17','2012-12-17 15:18:33',1)
 ,(3810,7,'2012-12-17','2012-12-17 15:18:39',1)
 ,(3811,32,'2012-12-17','2012-12-17 15:18:51',1)
 ,(3812,32,'2012-12-17','2012-12-17 15:18:54',1)
 ,(3813,13,'2012-12-17','2012-12-17 15:19:12',1)
 ,(3814,13,'2012-12-17','2012-12-17 15:19:16',1)
 ,(3815,13,'2012-12-17','2012-12-17 15:19:20',1)
 ,(3816,13,'2012-12-17','2012-12-17 15:19:21',1)
 ,(3817,7,'2012-12-17','2012-12-17 15:19:28',1)
 ,(3818,32,'2012-12-17','2012-12-17 15:19:32',1)
 ,(3819,32,'2012-12-17','2012-12-17 15:19:35',1)
 ,(3820,32,'2012-12-17','2012-12-17 15:19:39',1)
 ,(3821,32,'2012-12-17','2012-12-17 15:19:40',1)
 ,(3822,32,'2012-12-17','2012-12-17 15:19:40',1)
 ,(3823,32,'2012-12-17','2012-12-17 15:19:40',1)
 ,(3824,7,'2012-12-17','2012-12-17 15:19:47',1)
 ,(3825,7,'2012-12-17','2012-12-17 15:19:58',1)
 ,(3826,6,'2012-12-17','2012-12-17 15:22:03',1)
 ,(3827,7,'2012-12-17','2012-12-17 15:22:03',1)
 ,(3828,1,'2012-12-17','2012-12-17 15:22:09',1)
 ,(3829,150,'2012-12-17','2012-12-17 15:22:13',1)
 ,(3830,127,'2012-12-17','2012-12-17 15:23:11',1)
 ,(3831,136,'2012-12-17','2012-12-17 15:23:14',1)
 ,(3832,150,'2012-12-17','2012-12-17 15:23:14',1)
 ,(3833,150,'2012-12-17','2012-12-17 15:23:29',1)
 ,(3834,7,'2012-12-17','2012-12-17 15:23:34',1)
 ,(3835,152,'2012-12-17','2012-12-17 15:23:42',1)
 ,(3836,152,'2012-12-17','2012-12-17 15:24:11',1)
 ,(3837,152,'2012-12-17','2012-12-17 15:24:25',1)
 ,(3838,150,'2012-12-17','2012-12-17 15:24:28',1)
 ,(3839,150,'2012-12-17','2012-12-17 15:25:08',1)
 ,(3840,150,'2012-12-17','2012-12-17 15:25:27',1)
 ,(3841,150,'2012-12-17','2012-12-17 15:25:35',1)
 ,(3842,152,'2012-12-17','2012-12-17 15:25:48',1)
 ,(3843,150,'2012-12-17','2012-12-17 15:25:55',1)
 ,(3844,152,'2012-12-17','2012-12-17 15:25:59',1)
 ,(3845,2,'2012-12-17','2012-12-17 15:26:16',1)
 ,(3846,32,'2012-12-17','2012-12-17 15:26:34',1)
 ,(3847,32,'2012-12-17','2012-12-17 15:26:37',1)
 ,(3848,32,'2012-12-17','2012-12-17 15:26:41',1)
 ,(3849,32,'2012-12-17','2012-12-17 15:26:42',1)
 ,(3850,150,'2012-12-17','2012-12-17 15:26:44',1)
 ,(3851,152,'2012-12-17','2012-12-17 15:26:47',1)
 ,(3852,150,'2012-12-17','2012-12-17 15:30:04',1)
 ,(3853,152,'2012-12-17','2012-12-17 15:30:07',1)
 ,(3854,150,'2012-12-17','2012-12-17 15:30:48',1)
 ,(3855,152,'2012-12-17','2012-12-17 15:30:51',1)
 ,(3856,152,'2012-12-17','2012-12-17 15:30:58',1)
 ,(3857,152,'2012-12-17','2012-12-17 15:31:09',1)
 ,(3858,150,'2012-12-17','2012-12-17 15:31:12',1)
 ,(3859,152,'2012-12-17','2012-12-17 15:31:15',1)
 ,(3860,150,'2012-12-17','2012-12-17 15:32:12',1)
 ,(3861,152,'2012-12-17','2012-12-17 15:32:15',1)
 ,(3862,152,'2012-12-17','2012-12-17 15:32:21',1)
 ,(3863,150,'2012-12-17','2012-12-17 15:32:42',1)
 ,(3864,152,'2012-12-17','2012-12-17 15:32:44',1)
 ,(3865,152,'2012-12-17','2012-12-17 15:33:38',1)
 ,(3866,152,'2012-12-17','2012-12-17 15:33:40',1)
 ,(3867,150,'2012-12-17','2012-12-17 15:34:07',1)
 ,(3868,152,'2012-12-17','2012-12-17 15:34:10',1)
 ,(3869,150,'2012-12-17','2012-12-17 15:37:58',1)
 ,(3870,152,'2012-12-17','2012-12-17 15:38:10',1)
 ,(3871,152,'2012-12-17','2012-12-17 15:39:13',1)
 ,(3872,150,'2012-12-17','2012-12-17 15:39:15',1)
 ,(3873,152,'2012-12-17','2012-12-17 15:39:17',1)
 ,(3874,150,'2012-12-17','2012-12-17 15:57:01',1)
 ,(3875,127,'2012-12-17','2012-12-17 15:57:04',1)
 ,(3876,150,'2012-12-17','2012-12-17 15:57:08',1)
 ,(3877,127,'2012-12-17','2012-12-17 15:57:12',1)
 ,(3878,150,'2012-12-17','2012-12-17 15:57:15',1)
 ,(3879,127,'2012-12-17','2012-12-17 15:58:13',1)
 ,(3880,136,'2012-12-17','2012-12-17 15:58:18',1)
 ,(3881,138,'2012-12-17','2012-12-17 15:58:19',1)
 ,(3882,137,'2012-12-17','2012-12-17 15:58:19',1)
 ,(3883,123,'2012-12-17','2012-12-17 15:58:21',1)
 ,(3884,1,'2012-12-17','2012-12-17 16:02:18',1)
 ,(3885,2,'2012-12-17','2012-12-17 16:02:22',1)
 ,(3886,44,'2012-12-17','2012-12-17 16:02:28',1)
 ,(3887,46,'2012-12-17','2012-12-17 16:02:28',1)
 ,(3888,2,'2012-12-17','2012-12-17 16:02:33',1)
 ,(3889,51,'2012-12-17','2012-12-17 16:02:35',1)
 ,(3890,97,'2012-12-17','2012-12-17 16:02:47',1)
 ,(3891,97,'2012-12-17','2012-12-17 16:03:07',1)
 ,(3892,97,'2012-12-17','2012-12-17 16:03:16',1)
 ,(3893,97,'2012-12-17','2012-12-17 16:03:26',1)
 ,(3894,150,'2012-12-17','2012-12-17 17:43:20',1)
 ,(3895,150,'2012-12-17','2012-12-17 17:43:21',1)
 ,(3896,152,'2012-12-17','2012-12-17 17:43:35',1)
 ,(3897,1,'2012-12-17','2012-12-17 17:46:27',1)
 ,(3898,150,'2012-12-17','2012-12-17 17:46:35',1)
 ,(3899,152,'2012-12-17','2012-12-17 17:46:37',1)
 ,(3900,1,'2012-12-17','2012-12-17 17:46:40',1)
 ,(3901,2,'2012-12-17','2012-12-17 17:53:59',1)
 ,(3902,43,'2012-12-17','2012-12-17 17:54:03',1)
 ,(3903,43,'2012-12-17','2012-12-17 17:54:11',1)
 ,(3904,43,'2012-12-17','2012-12-17 17:54:16',1)
 ,(3905,43,'2012-12-17','2012-12-17 17:57:11',1)
 ,(3906,43,'2012-12-17','2012-12-17 17:57:14',1)
 ,(3907,43,'2012-12-17','2012-12-17 17:57:49',1)
 ,(3908,43,'2012-12-17','2012-12-17 17:57:55',1)
 ,(3909,43,'2012-12-17','2012-12-17 17:58:40',1)
 ,(3910,43,'2012-12-17','2012-12-17 17:59:03',1)
 ,(3911,43,'2012-12-17','2012-12-17 17:59:32',1)
 ,(3912,43,'2012-12-17','2012-12-17 17:59:51',1)
 ,(3913,43,'2012-12-17','2012-12-17 18:05:59',1)
 ,(3914,43,'2012-12-17','2012-12-17 18:08:17',1)
 ,(3915,1,'2012-12-17','2012-12-17 18:08:20',1)
 ,(3916,1,'2012-12-17','2012-12-17 18:09:18',1)
 ,(3917,2,'2012-12-17','2012-12-17 18:09:21',1)
 ,(3918,32,'2012-12-17','2012-12-17 18:09:24',1)
 ,(3919,33,'2012-12-17','2012-12-17 18:09:29',1)
 ,(3920,33,'2012-12-17','2012-12-17 18:09:42',1)
 ,(3921,32,'2012-12-17','2012-12-17 18:09:42',1)
 ,(3922,9,'2012-12-17','2012-12-17 18:09:46',1)
 ,(3923,7,'2012-12-17','2012-12-17 18:09:47',1)
 ,(3924,7,'2012-12-17','2012-12-17 18:09:47',1)
 ,(3925,6,'2012-12-17','2012-12-17 18:10:00',1)
 ,(3926,7,'2012-12-17','2012-12-17 18:10:00',1)
 ,(3927,1,'2012-12-17','2012-12-17 18:10:03',1)
 ,(3928,154,'2012-12-17','2012-12-17 18:10:05',1)
 ,(3929,154,'2012-12-17','2012-12-17 18:10:10',1)
 ,(3930,154,'2012-12-17','2012-12-17 18:10:35',1)
 ,(3931,154,'2012-12-17','2012-12-17 18:21:25',1)
 ,(3932,154,'2012-12-17','2012-12-17 18:22:08',1)
 ,(3933,2,'2012-12-17','2012-12-17 18:22:33',1)
 ,(3934,43,'2012-12-17','2012-12-17 18:22:38',1)
 ,(3935,43,'2012-12-17','2012-12-17 18:22:42',1)
 ,(3936,43,'2012-12-17','2012-12-17 18:22:45',1)
 ,(3937,154,'2012-12-17','2012-12-17 18:22:50',1)
 ,(3938,154,'2012-12-17','2012-12-17 18:23:28',1)
 ,(3939,154,'2012-12-17','2012-12-17 18:24:29',1)
 ,(3940,154,'2012-12-17','2012-12-17 18:24:33',1)
 ,(3941,154,'2012-12-17','2012-12-17 18:24:39',1)
 ,(3942,154,'2012-12-17','2012-12-17 18:24:39',1)
 ,(3943,154,'2012-12-17','2012-12-17 18:25:47',1)
 ,(3944,154,'2012-12-17','2012-12-17 18:25:56',1)
 ,(3945,154,'2012-12-17','2012-12-17 18:26:14',1)
 ,(3946,154,'2012-12-17','2012-12-17 18:26:31',1)
 ,(3947,154,'2012-12-17','2012-12-17 18:26:36',1)
 ,(3948,154,'2012-12-17','2012-12-17 18:26:42',1)
 ,(3949,154,'2012-12-17','2012-12-17 18:26:52',1)
 ,(3950,154,'2012-12-17','2012-12-17 18:27:46',1)
 ,(3951,154,'2012-12-17','2012-12-17 18:27:54',1)
 ,(3952,43,'2012-12-17','2012-12-17 18:29:58',1)
 ,(3953,154,'2012-12-17','2012-12-17 18:30:03',1)
 ,(3954,154,'2012-12-17','2012-12-17 18:30:24',1)
 ,(3955,154,'2012-12-17','2012-12-17 18:30:36',1)
 ,(3956,154,'2012-12-17','2012-12-17 18:31:04',1)
 ,(3957,154,'2012-12-17','2012-12-17 18:31:20',1)
 ,(3958,1,'2012-12-18','2012-12-18 10:16:16',1)
 ,(3959,154,'2012-12-18','2012-12-18 10:16:43',1)
 ,(3960,154,'2012-12-18','2012-12-18 10:19:22',1)
 ,(3961,154,'2012-12-18','2012-12-18 10:19:53',1)
 ,(3962,2,'2012-12-18','2012-12-18 10:20:31',1)
 ,(3963,43,'2012-12-18','2012-12-18 10:26:01',1)
 ,(3964,43,'2012-12-18','2012-12-18 10:26:06',1)
 ,(3965,43,'2012-12-18','2012-12-18 10:26:13',1)
 ,(3966,154,'2012-12-18','2012-12-18 10:26:36',1)
 ,(3967,154,'2012-12-18','2012-12-18 10:26:42',1)
 ,(3968,154,'2012-12-18','2012-12-18 10:27:12',1)
 ,(3969,154,'2012-12-18','2012-12-18 10:27:35',1)
 ,(3970,154,'2012-12-18','2012-12-18 10:27:55',1)
 ,(3971,154,'2012-12-18','2012-12-18 10:33:54',1)
 ,(3972,154,'2012-12-18','2012-12-18 10:34:05',1)
 ,(3973,154,'2012-12-18','2012-12-18 10:34:54',1)
 ,(3974,154,'2012-12-18','2012-12-18 10:39:10',1)
 ,(3975,43,'2012-12-18','2012-12-18 10:39:33',1)
 ,(3976,154,'2012-12-18','2012-12-18 10:39:39',1)
 ,(3977,43,'2012-12-18','2012-12-18 10:42:56',1)
 ,(3978,154,'2012-12-18','2012-12-18 10:42:58',1)
 ,(3979,154,'2012-12-18','2012-12-18 10:43:51',1)
 ,(3980,154,'2012-12-18','2012-12-18 10:44:16',1)
 ,(3981,154,'2012-12-18','2012-12-18 10:44:44',1)
 ,(3982,43,'2012-12-18','2012-12-18 10:44:57',1)
 ,(3983,154,'2012-12-18','2012-12-18 10:45:02',1)
 ,(3984,154,'2012-12-18','2012-12-18 10:45:28',1)
 ,(3985,51,'2012-12-18','2012-12-18 10:50:08',1)
 ,(3986,66,'2012-12-18','2012-12-18 10:50:13',1)
 ,(3987,109,'2012-12-18','2012-12-18 10:50:19',1)
 ,(3988,1,'2012-12-18','2012-12-18 10:50:20',0)
 ,(3989,154,'2012-12-18','2012-12-18 10:50:23',0)
 ,(3990,154,'2012-12-18','2012-12-18 10:50:27',0)
 ,(3991,154,'2012-12-18','2012-12-18 10:50:36',0)
 ,(3992,109,'2012-12-18','2012-12-18 10:50:41',0)
 ,(3993,154,'2012-12-18','2012-12-18 10:50:42',0)
 ,(3994,2,'2012-12-18','2012-12-18 10:50:43',1)
 ,(3995,154,'2012-12-18','2012-12-18 10:50:44',1)
 ,(3996,43,'2012-12-18','2012-12-18 10:51:00',1)
 ,(3997,43,'2012-12-18','2012-12-18 10:51:03',1)
 ,(3998,43,'2012-12-18','2012-12-18 10:51:06',1)
 ,(3999,43,'2012-12-18','2012-12-18 10:51:07',1)
 ,(4000,43,'2012-12-18','2012-12-18 10:51:11',1)
 ,(4001,43,'2012-12-18','2012-12-18 10:51:28',1)
 ,(4002,154,'2012-12-18','2012-12-18 10:51:31',1)
 ,(4003,43,'2012-12-18','2012-12-18 10:57:20',1)
 ,(4004,43,'2012-12-18','2012-12-18 10:57:21',1)
 ,(4005,43,'2012-12-18','2012-12-18 10:57:24',1)
 ,(4006,43,'2012-12-18','2012-12-18 10:57:27',1)
 ,(4007,43,'2012-12-18','2012-12-18 10:57:29',1)
 ,(4008,154,'2012-12-18','2012-12-18 10:57:32',1)
 ,(4009,154,'2012-12-18','2012-12-18 10:58:23',1)
 ,(4010,154,'2012-12-18','2012-12-18 10:58:23',1)
 ,(4011,43,'2012-12-18','2012-12-18 10:58:41',1)
 ,(4012,43,'2012-12-18','2012-12-18 10:58:41',1)
 ,(4013,43,'2012-12-18','2012-12-18 10:58:45',1)
 ,(4014,154,'2012-12-18','2012-12-18 10:58:49',1)
 ,(4015,43,'2012-12-18','2012-12-18 10:59:05',1)
 ,(4016,43,'2012-12-18','2012-12-18 10:59:09',1)
 ,(4017,43,'2012-12-18','2012-12-18 10:59:09',1)
 ,(4018,43,'2012-12-18','2012-12-18 10:59:24',1)
 ,(4019,154,'2012-12-18','2012-12-18 10:59:29',1)
 ,(4020,43,'2012-12-18','2012-12-18 11:00:57',1)
 ,(4021,43,'2012-12-18','2012-12-18 11:01:01',1)
 ,(4022,43,'2012-12-18','2012-12-18 11:01:01',1)
 ,(4023,154,'2012-12-18','2012-12-18 11:01:09',1)
 ,(4024,43,'2012-12-18','2012-12-18 11:01:51',1)
 ,(4025,154,'2012-12-18','2012-12-18 11:01:57',1)
 ,(4026,154,'2012-12-18','2012-12-18 11:03:08',1)
 ,(4027,154,'2012-12-18','2012-12-18 11:03:36',1)
 ,(4028,154,'2012-12-18','2012-12-18 11:03:56',1)
 ,(4029,154,'2012-12-18','2012-12-18 11:04:19',1)
 ,(4030,154,'2012-12-18','2012-12-18 11:06:26',1)
 ,(4031,154,'2012-12-18','2012-12-18 11:06:27',1)
 ,(4032,154,'2012-12-18','2012-12-18 11:06:42',1)
 ,(4033,154,'2012-12-18','2012-12-18 11:06:59',1)
 ,(4034,154,'2012-12-18','2012-12-18 11:08:23',1)
 ,(4035,154,'2012-12-18','2012-12-18 13:12:07',1)
 ,(4036,154,'2012-12-18','2012-12-18 13:12:08',1)
 ,(4037,154,'2012-12-18','2012-12-18 13:18:08',1)
 ,(4038,154,'2012-12-18','2012-12-18 13:19:27',1)
 ,(4039,154,'2012-12-18','2012-12-18 13:19:27',1)
 ,(4040,154,'2012-12-18','2012-12-18 13:19:40',1)
 ,(4041,154,'2012-12-18','2012-12-18 13:20:25',1)
 ,(4042,154,'2012-12-18','2012-12-18 13:20:39',1)
 ,(4043,154,'2012-12-18','2012-12-18 13:20:59',1)
 ,(4044,43,'2012-12-18','2012-12-18 13:21:15',1)
 ,(4045,43,'2012-12-18','2012-12-18 13:21:19',1)
 ,(4046,154,'2012-12-18','2012-12-18 13:21:23',1)
 ,(4047,43,'2012-12-18','2012-12-18 13:22:09',1)
 ,(4048,154,'2012-12-18','2012-12-18 13:22:11',1)
 ,(4049,154,'2012-12-18','2012-12-18 13:24:38',1)
 ,(4050,154,'2012-12-18','2012-12-18 13:25:40',1)
 ,(4051,154,'2012-12-18','2012-12-18 13:26:05',1)
 ,(4052,1,'2012-12-18','2012-12-18 13:30:00',0)
 ,(4053,150,'2012-12-18','2012-12-18 13:30:03',0)
 ,(4054,109,'2012-12-18','2012-12-18 13:31:18',0)
 ,(4055,2,'2012-12-18','2012-12-18 13:31:19',1)
 ,(4056,43,'2012-12-18','2012-12-18 13:31:25',1)
 ,(4057,43,'2012-12-18','2012-12-18 13:31:29',1)
 ,(4058,43,'2012-12-18','2012-12-18 13:31:31',1)
 ,(4059,154,'2012-12-18','2012-12-18 13:31:35',1)
 ,(4060,43,'2012-12-18','2012-12-18 13:34:15',1)
 ,(4061,154,'2012-12-18','2012-12-18 13:35:40',1)
 ,(4062,154,'2012-12-18','2012-12-18 13:35:43',1)
 ,(4063,154,'2012-12-18','2012-12-18 13:36:48',1)
 ,(4064,43,'2012-12-18','2012-12-18 13:48:40',1)
 ,(4065,43,'2012-12-18','2012-12-18 13:48:41',1)
 ,(4066,43,'2012-12-18','2012-12-18 13:48:43',1)
 ,(4067,43,'2012-12-18','2012-12-18 13:48:54',1)
 ,(4068,43,'2012-12-18','2012-12-18 13:48:57',1)
 ,(4069,43,'2012-12-18','2012-12-18 13:48:59',1)
 ,(4070,43,'2012-12-18','2012-12-18 13:49:02',1)
 ,(4071,43,'2012-12-18','2012-12-18 13:49:03',1)
 ,(4072,43,'2012-12-18','2012-12-18 13:49:06',1)
 ,(4073,154,'2012-12-18','2012-12-18 13:49:12',1)
 ,(4074,154,'2012-12-18','2012-12-18 13:49:47',1)
 ,(4075,43,'2012-12-18','2012-12-18 14:01:42',1)
 ,(4076,43,'2012-12-18','2012-12-18 14:01:45',1)
 ,(4077,154,'2012-12-18','2012-12-18 14:01:47',1)
 ,(4078,154,'2012-12-18','2012-12-18 14:02:11',1)
 ,(4079,154,'2012-12-18','2012-12-18 14:02:18',1)
 ,(4080,43,'2012-12-18','2012-12-18 14:03:01',1)
 ,(4081,154,'2012-12-18','2012-12-18 14:03:03',1)
 ,(4082,154,'2012-12-18','2012-12-18 14:03:13',1)
 ,(4083,1,'2012-12-18','2012-12-18 14:03:48',0)
 ,(4084,154,'2012-12-18','2012-12-18 14:03:53',0)
 ,(4085,109,'2012-12-18','2012-12-18 14:04:02',0)
 ,(4086,2,'2012-12-18','2012-12-18 14:04:03',1)
 ,(4087,43,'2012-12-18','2012-12-18 14:04:32',1)
 ,(4088,43,'2012-12-18','2012-12-18 14:04:36',1)
 ,(4089,43,'2012-12-18','2012-12-18 14:04:43',1)
 ,(4090,154,'2012-12-18','2012-12-18 14:04:45',1)
 ,(4091,43,'2012-12-18','2012-12-18 14:05:04',1)
 ,(4092,43,'2012-12-18','2012-12-18 14:05:04',1)
 ,(4093,154,'2012-12-18','2012-12-18 14:05:11',1)
 ,(4094,154,'2012-12-18','2012-12-18 14:05:28',1)
 ,(4095,43,'2012-12-18','2012-12-18 14:05:32',1)
 ,(4096,154,'2012-12-18','2012-12-18 14:05:34',1)
 ,(4097,154,'2012-12-18','2012-12-18 14:06:35',1)
 ,(4098,154,'2012-12-18','2012-12-18 14:06:39',1)
 ,(4099,154,'2012-12-18','2012-12-18 14:06:51',1)
 ,(4100,43,'2012-12-18','2012-12-18 14:07:18',1)
 ,(4101,43,'2012-12-18','2012-12-18 14:07:20',1)
 ,(4102,43,'2012-12-18','2012-12-18 14:07:32',1)
 ,(4103,43,'2012-12-18','2012-12-18 14:07:34',1)
 ,(4104,43,'2012-12-18','2012-12-18 14:07:36',1)
 ,(4105,43,'2012-12-18','2012-12-18 14:07:37',1)
 ,(4106,43,'2012-12-18','2012-12-18 14:07:50',1)
 ,(4107,2,'2012-12-18','2012-12-18 14:07:52',1)
 ,(4108,43,'2012-12-18','2012-12-18 14:07:54',1)
 ,(4109,39,'2012-12-18','2012-12-18 14:07:57',1)
 ,(4110,40,'2012-12-18','2012-12-18 14:07:58',1)
 ,(4111,43,'2012-12-18','2012-12-18 14:08:03',1)
 ,(4112,43,'2012-12-18','2012-12-18 14:08:07',1)
 ,(4113,43,'2012-12-18','2012-12-18 14:08:11',1)
 ,(4114,43,'2012-12-18','2012-12-18 14:08:30',1)
 ,(4115,43,'2012-12-18','2012-12-18 14:08:52',1)
 ,(4116,43,'2012-12-18','2012-12-18 14:08:53',1)
 ,(4117,43,'2012-12-18','2012-12-18 14:09:23',1)
 ,(4118,43,'2012-12-18','2012-12-18 14:09:26',1)
 ,(4119,154,'2012-12-18','2012-12-18 14:09:31',1)
 ,(4120,154,'2012-12-18','2012-12-18 14:10:01',1)
 ,(4121,154,'2012-12-18','2012-12-18 14:10:22',1)
 ,(4122,154,'2012-12-18','2012-12-18 14:10:40',1)
 ,(4123,154,'2012-12-18','2012-12-18 14:11:02',1)
 ,(4124,154,'2012-12-18','2012-12-18 14:11:47',1)
 ,(4125,154,'2012-12-18','2012-12-18 14:12:10',1)
 ,(4126,154,'2012-12-18','2012-12-18 14:13:15',1)
 ,(4127,154,'2012-12-18','2012-12-18 14:13:27',1)
 ,(4128,154,'2012-12-18','2012-12-18 14:13:37',1)
 ,(4129,154,'2012-12-18','2012-12-18 14:14:34',1)
 ,(4130,154,'2012-12-18','2012-12-18 14:14:38',1)
 ,(4131,154,'2012-12-18','2012-12-18 14:15:29',1)
 ,(4132,154,'2012-12-18','2012-12-18 14:16:24',1)
 ,(4133,154,'2012-12-18','2012-12-18 14:17:07',1)
 ,(4134,154,'2012-12-18','2012-12-18 14:17:31',1)
 ,(4135,154,'2012-12-18','2012-12-18 14:17:49',1)
 ,(4136,154,'2012-12-18','2012-12-18 14:18:00',1)
 ,(4137,154,'2012-12-18','2012-12-18 14:18:11',1)
 ,(4138,154,'2012-12-18','2012-12-18 14:18:13',1)
 ,(4139,154,'2012-12-18','2012-12-18 14:18:35',1)
 ,(4140,43,'2012-12-18','2012-12-18 14:19:11',1)
 ,(4141,43,'2012-12-18','2012-12-18 14:19:14',1)
 ,(4142,43,'2012-12-18','2012-12-18 14:19:15',1)
 ,(4143,43,'2012-12-18','2012-12-18 14:19:28',1)
 ,(4144,154,'2012-12-18','2012-12-18 14:19:31',1)
 ,(4145,154,'2012-12-18','2012-12-18 14:21:06',1)
 ,(4146,154,'2012-12-18','2012-12-18 14:21:06',1)
 ,(4147,154,'2012-12-18','2012-12-18 14:21:07',1)
 ,(4148,154,'2012-12-18','2012-12-18 14:21:07',1)
 ,(4149,154,'2012-12-18','2012-12-18 14:21:07',1)
 ,(4150,154,'2012-12-18','2012-12-18 14:26:01',1)
 ,(4151,154,'2012-12-18','2012-12-18 14:26:30',1)
 ,(4152,43,'2012-12-18','2012-12-18 14:26:41',1)
 ,(4153,43,'2012-12-18','2012-12-18 14:26:45',1)
 ,(4154,43,'2012-12-18','2012-12-18 14:26:45',1)
 ,(4155,43,'2012-12-18','2012-12-18 14:27:29',1)
 ,(4156,43,'2012-12-18','2012-12-18 14:27:38',1)
 ,(4157,43,'2012-12-18','2012-12-18 14:27:41',1)
 ,(4158,154,'2012-12-18','2012-12-18 14:27:44',1)
 ,(4159,43,'2012-12-18','2012-12-18 14:28:14',1)
 ,(4160,43,'2012-12-18','2012-12-18 14:28:18',1)
 ,(4161,43,'2012-12-18','2012-12-18 14:28:18',1)
 ,(4162,43,'2012-12-18','2012-12-18 14:28:30',1)
 ,(4163,43,'2012-12-18','2012-12-18 14:28:33',1)
 ,(4164,154,'2012-12-18','2012-12-18 14:28:39',1)
 ,(4165,154,'2012-12-18','2012-12-18 14:28:57',1)
 ,(4166,154,'2012-12-18','2012-12-18 14:29:14',1)
 ,(4167,154,'2012-12-18','2012-12-18 14:30:27',1)
 ,(4168,154,'2012-12-18','2012-12-18 14:30:45',1)
 ,(4169,154,'2012-12-18','2012-12-18 14:30:47',1)
 ,(4170,154,'2012-12-18','2012-12-18 14:30:47',1)
 ,(4171,154,'2012-12-18','2012-12-18 14:30:48',1)
 ,(4172,154,'2012-12-18','2012-12-18 14:30:48',1)
 ,(4173,154,'2012-12-18','2012-12-18 14:30:49',1)
 ,(4174,154,'2012-12-18','2012-12-18 14:30:49',1)
 ,(4175,154,'2012-12-18','2012-12-18 14:30:49',1)
 ,(4176,154,'2012-12-18','2012-12-18 14:30:50',1)
 ,(4177,154,'2012-12-18','2012-12-18 14:30:50',1)
 ,(4178,154,'2012-12-18','2012-12-18 14:30:50',1)
 ,(4179,154,'2012-12-18','2012-12-18 14:30:51',1)
 ,(4180,154,'2012-12-18','2012-12-18 14:30:51',1)
 ,(4181,154,'2012-12-18','2012-12-18 14:30:51',1)
 ,(4182,154,'2012-12-18','2012-12-18 14:30:52',1)
 ,(4183,154,'2012-12-18','2012-12-18 14:30:52',1)
 ,(4184,154,'2012-12-18','2012-12-18 14:30:52',1)
 ,(4185,154,'2012-12-18','2012-12-18 14:30:53',1)
 ,(4186,154,'2012-12-18','2012-12-18 14:30:53',1)
 ,(4187,154,'2012-12-18','2012-12-18 14:30:53',1)
 ,(4188,154,'2012-12-18','2012-12-18 14:30:54',1)
 ,(4189,154,'2012-12-18','2012-12-18 14:30:54',1)
 ,(4190,154,'2012-12-18','2012-12-18 14:30:54',1)
 ,(4191,154,'2012-12-18','2012-12-18 14:30:55',1)
 ,(4192,154,'2012-12-18','2012-12-18 14:30:55',1)
 ,(4193,154,'2012-12-18','2012-12-18 14:30:55',1)
 ,(4194,154,'2012-12-18','2012-12-18 14:30:56',1)
 ,(4195,154,'2012-12-18','2012-12-18 14:30:56',1)
 ,(4196,154,'2012-12-18','2012-12-18 14:30:56',1)
 ,(4197,154,'2012-12-18','2012-12-18 14:30:57',1)
 ,(4198,154,'2012-12-18','2012-12-18 14:30:57',1)
 ,(4199,154,'2012-12-18','2012-12-18 14:30:57',1)
 ,(4200,154,'2012-12-18','2012-12-18 14:30:58',1)
 ,(4201,43,'2012-12-18','2012-12-18 14:31:04',1)
 ,(4202,43,'2012-12-18','2012-12-18 14:31:08',1)
 ,(4203,43,'2012-12-18','2012-12-18 14:31:08',1)
 ,(4204,43,'2012-12-18','2012-12-18 14:31:19',1)
 ,(4205,154,'2012-12-18','2012-12-18 14:31:21',1)
 ,(4206,154,'2012-12-18','2012-12-18 14:31:48',1)
 ,(4207,43,'2012-12-18','2012-12-18 14:39:32',1)
 ,(4208,43,'2012-12-18','2012-12-18 14:39:36',1)
 ,(4209,43,'2012-12-18','2012-12-18 14:39:36',1)
 ,(4210,43,'2012-12-18','2012-12-18 14:40:11',1)
 ,(4211,154,'2012-12-18','2012-12-18 14:40:14',1)
 ,(4212,154,'2012-12-18','2012-12-18 14:42:12',1)
 ,(4213,154,'2012-12-18','2012-12-18 14:42:16',1)
 ,(4214,104,'2012-12-18','2012-12-18 14:42:18',1)
 ,(4215,154,'2012-12-18','2012-12-18 14:42:21',1)
 ,(4216,154,'2012-12-18','2012-12-18 14:42:43',1)
 ,(4217,154,'2012-12-18','2012-12-18 14:43:38',1)
 ,(4218,154,'2012-12-18','2012-12-18 14:43:48',1)
 ,(4219,43,'2012-12-18','2012-12-18 14:45:11',1)
 ,(4220,43,'2012-12-18','2012-12-18 14:45:16',1)
 ,(4221,43,'2012-12-18','2012-12-18 14:45:16',1)
 ,(4222,43,'2012-12-18','2012-12-18 14:45:24',1)
 ,(4223,43,'2012-12-18','2012-12-18 14:45:25',1)
 ,(4224,43,'2012-12-18','2012-12-18 14:45:28',1)
 ,(4225,154,'2012-12-18','2012-12-18 14:45:33',1)
 ,(4226,154,'2012-12-18','2012-12-18 14:47:01',1)
 ,(4227,154,'2012-12-18','2012-12-18 14:48:27',1)
 ,(4228,154,'2012-12-18','2012-12-18 14:50:03',1)
 ,(4229,154,'2012-12-18','2012-12-18 14:52:19',1)
 ,(4230,154,'2012-12-18','2012-12-18 14:53:14',1)
 ,(4231,154,'2012-12-18','2012-12-18 14:53:42',1)
 ,(4232,154,'2012-12-18','2012-12-18 14:53:49',1)
 ,(4233,154,'2012-12-18','2012-12-18 14:54:21',1)
 ,(4234,154,'2012-12-18','2012-12-18 14:55:44',1)
 ,(4235,154,'2012-12-18','2012-12-18 14:55:44',1)
 ,(4236,154,'2012-12-18','2012-12-18 14:55:58',1)
 ,(4237,154,'2012-12-18','2012-12-18 14:57:29',1)
 ,(4238,154,'2012-12-18','2012-12-18 14:57:32',1)
 ,(4239,109,'2012-12-18','2012-12-18 14:57:36',1)
 ,(4240,1,'2012-12-18','2012-12-18 14:57:36',0)
 ,(4241,154,'2012-12-18','2012-12-18 14:57:40',0)
 ,(4242,154,'2012-12-18','2012-12-18 14:58:19',0)
 ,(4243,154,'2012-12-18','2012-12-18 14:58:41',0)
 ,(4244,1,'2012-12-18','2012-12-18 14:59:15',0)
 ,(4245,109,'2012-12-18','2012-12-18 14:59:20',0)
 ,(4246,2,'2012-12-18','2012-12-18 14:59:21',1)
 ,(4247,154,'2012-12-18','2012-12-18 14:59:22',1)
 ,(4248,154,'2012-12-18','2012-12-18 14:59:26',1)
 ,(4249,154,'2012-12-18','2012-12-18 14:59:46',1)
 ,(4250,154,'2012-12-18','2012-12-18 14:59:49',1)
 ,(4251,43,'2012-12-18','2012-12-18 15:00:27',1)
 ,(4252,154,'2012-12-18','2012-12-18 15:05:51',1)
 ,(4253,43,'2012-12-18','2012-12-18 15:05:59',1)
 ,(4254,43,'2012-12-18','2012-12-18 15:06:02',1)
 ,(4255,154,'2012-12-18','2012-12-18 15:06:05',1)
 ,(4256,154,'2012-12-18','2012-12-18 15:06:49',1)
 ,(4257,109,'2012-12-18','2012-12-18 15:06:53',1)
 ,(4258,1,'2012-12-18','2012-12-18 15:06:54',0)
 ,(4259,109,'2012-12-18','2012-12-18 15:06:54',0)
 ,(4260,1,'2012-12-18','2012-12-18 15:06:55',0)
 ,(4261,154,'2012-12-18','2012-12-18 15:06:57',0)
 ,(4262,154,'2012-12-18','2012-12-18 15:09:32',0)
 ,(4263,154,'2012-12-18','2012-12-18 15:09:41',0)
 ,(4264,154,'2012-12-18','2012-12-18 15:09:56',0)
 ,(4265,154,'2012-12-18','2012-12-18 15:10:13',0)
 ,(4266,154,'2012-12-18','2012-12-18 15:10:51',0)
 ,(4267,154,'2012-12-18','2012-12-18 15:12:02',0)
 ,(4268,154,'2012-12-18','2012-12-18 15:12:53',0)
 ,(4269,154,'2012-12-18','2012-12-18 15:14:31',0)
 ,(4270,154,'2012-12-18','2012-12-18 15:14:49',0)
 ,(4271,154,'2012-12-18','2012-12-18 15:15:04',0)
 ,(4272,154,'2012-12-18','2012-12-18 15:16:25',0)
 ,(4273,154,'2012-12-18','2012-12-18 15:17:09',0)
 ,(4274,154,'2012-12-18','2012-12-18 15:18:39',0)
 ,(4275,154,'2012-12-18','2012-12-18 15:18:49',0)
 ,(4276,154,'2012-12-18','2012-12-18 15:19:22',0)
 ,(4277,154,'2012-12-18','2012-12-18 15:20:10',0)
 ,(4278,154,'2012-12-18','2012-12-18 15:20:25',0)
 ,(4279,154,'2012-12-18','2012-12-18 15:20:55',0)
 ,(4280,154,'2012-12-18','2012-12-18 15:21:35',0)
 ,(4281,109,'2012-12-18','2012-12-18 15:21:39',0)
 ,(4282,154,'2012-12-18','2012-12-18 15:21:40',0)
 ,(4283,43,'2012-12-18','2012-12-18 15:21:40',1)
 ,(4284,154,'2012-12-18','2012-12-18 15:21:43',1)
 ,(4285,154,'2012-12-18','2012-12-18 15:21:47',1)
 ,(4286,154,'2012-12-18','2012-12-18 15:23:05',1)
 ,(4287,154,'2012-12-18','2012-12-18 15:23:32',1)
 ,(4288,109,'2012-12-18','2012-12-18 15:23:46',1)
 ,(4289,1,'2012-12-18','2012-12-18 15:23:46',0)
 ,(4290,154,'2012-12-18','2012-12-18 15:23:49',0)
 ,(4291,150,'2012-12-18','2012-12-18 15:24:30',0)
 ,(4292,127,'2012-12-18','2012-12-18 15:24:30',0)
 ,(4293,127,'2012-12-18','2012-12-18 15:24:31',0)
 ,(4294,127,'2012-12-18','2012-12-18 15:25:42',0)
 ,(4295,127,'2012-12-18','2012-12-18 15:26:16',0)
 ,(4296,154,'2012-12-18','2012-12-18 15:26:18',0)
 ,(4297,150,'2012-12-18','2012-12-18 15:26:19',0)
 ,(4298,154,'2012-12-18','2012-12-18 15:26:21',0)
 ,(4299,127,'2012-12-18','2012-12-18 15:26:24',0)
 ,(4300,154,'2012-12-18','2012-12-18 15:26:26',0)
 ,(4301,1,'2012-12-18','2012-12-18 15:26:28',0)
 ,(4302,127,'2012-12-18','2012-12-18 15:26:30',0)
 ,(4303,127,'2012-12-18','2012-12-18 15:26:58',0)
 ,(4304,154,'2012-12-18','2012-12-18 15:27:01',0)
 ,(4305,154,'2012-12-18','2012-12-18 15:27:23',0)
 ,(4306,154,'2012-12-18','2012-12-18 15:28:15',0)
 ,(4307,150,'2012-12-18','2012-12-18 15:31:05',0)
 ,(4308,127,'2012-12-18','2012-12-18 15:31:07',0)
 ,(4309,136,'2012-12-18','2012-12-18 15:31:10',0)
 ,(4310,123,'2012-12-18','2012-12-18 15:31:11',0)
 ,(4311,127,'2012-12-18','2012-12-18 15:31:15',0)
 ,(4312,136,'2012-12-18','2012-12-18 15:31:18',0)
 ,(4313,1,'2012-12-18','2012-12-18 15:31:31',0)
 ,(4314,123,'2012-12-18','2012-12-18 15:31:32',0)
 ,(4315,1,'2012-12-18','2012-12-18 15:39:28',0)
 ,(4316,127,'2012-12-18','2012-12-18 15:39:30',0)
 ,(4317,138,'2012-12-18','2012-12-18 15:39:33',0)
 ,(4318,127,'2012-12-18','2012-12-18 15:40:07',0)
 ,(4319,127,'2012-12-18','2012-12-18 15:40:23',0)
 ,(4320,127,'2012-12-18','2012-12-18 15:41:16',0)
 ,(4321,123,'2012-12-18','2012-12-18 15:41:18',0)
 ,(4322,127,'2012-12-18','2012-12-18 15:41:21',0)
 ,(4323,137,'2012-12-18','2012-12-18 15:41:22',0)
 ,(4324,1,'2012-12-18','2012-12-18 15:41:26',0)
 ,(4325,150,'2012-12-18','2012-12-18 15:41:37',0)
 ,(4326,154,'2012-12-18','2012-12-18 15:41:39',0)
 ,(4327,154,'2012-12-18','2012-12-18 15:42:05',0)
 ,(4328,154,'2012-12-18','2012-12-18 15:42:11',0)
 ,(4329,154,'2012-12-18','2012-12-18 15:42:28',0)
 ,(4330,127,'2012-12-18','2012-12-18 15:42:32',0)
 ,(4331,1,'2012-12-18','2012-12-18 15:42:34',0)
 ,(4332,1,'2012-12-19','2012-12-19 09:58:04',0)
 ,(4333,127,'2012-12-19','2012-12-19 09:58:06',0)
 ,(4334,150,'2012-12-19','2012-12-19 09:58:08',0)
 ,(4335,109,'2012-12-19','2012-12-19 10:01:52',0)
 ,(4336,2,'2012-12-19','2012-12-19 10:01:53',1)
 ,(4337,51,'2012-12-19','2012-12-19 10:02:30',1)
 ,(4338,97,'2012-12-19','2012-12-19 10:02:36',1)
 ,(4339,97,'2012-12-19','2012-12-19 10:02:40',1)
 ,(4340,1,'2012-12-19','2012-12-19 11:15:20',1)
 ,(4341,1,'2012-12-19','2012-12-19 11:17:53',1)
 ,(4342,1,'2012-12-19','2012-12-19 11:21:29',1)
 ,(4343,1,'2012-12-19','2012-12-19 11:21:32',1)
 ,(4344,2,'2012-12-19','2012-12-19 11:36:15',1)
 ,(4345,51,'2012-12-19','2012-12-19 11:36:20',1)
 ,(4346,99,'2012-12-19','2012-12-19 11:36:36',1)
 ,(4347,99,'2012-12-19','2012-12-19 11:36:44',1)
 ,(4348,99,'2012-12-19','2012-12-19 11:37:03',1)
 ,(4349,51,'2012-12-19','2012-12-19 11:37:12',1)
 ,(4350,97,'2012-12-19','2012-12-19 11:37:14',1)
 ,(4351,97,'2012-12-19','2012-12-19 11:37:18',1)
 ,(4352,97,'2012-12-19','2012-12-19 11:37:49',1)
 ,(4353,51,'2012-12-19','2012-12-19 11:37:51',1)
 ,(4354,99,'2012-12-19','2012-12-19 11:38:13',1)
 ,(4355,99,'2012-12-19','2012-12-19 11:38:59',1)
 ,(4356,1,'2012-12-19','2012-12-19 11:39:25',1)
 ,(4357,1,'2012-12-19','2012-12-19 13:41:48',0)
 ,(4358,150,'2012-12-19','2012-12-19 13:41:52',0)
 ,(4359,150,'2012-12-19','2012-12-19 13:41:54',0)
 ,(4360,154,'2012-12-19','2012-12-19 13:41:55',0)
 ,(4361,150,'2012-12-19','2012-12-19 13:42:25',0)
 ,(4362,1,'2012-12-19','2012-12-19 13:42:37',0)
 ,(4363,150,'2012-12-19','2012-12-19 13:46:08',0)
 ,(4364,123,'2012-12-19','2012-12-19 13:46:09',0)
 ,(4365,123,'2012-12-19','2012-12-19 13:46:10',0)
 ,(4366,123,'2012-12-19','2012-12-19 13:46:11',0)
 ,(4367,1,'2012-12-19','2012-12-19 13:46:12',0)
 ,(4368,1,'2012-12-19','2012-12-19 13:46:18',0)
 ,(4369,1,'2012-12-19','2012-12-19 13:46:21',0)
 ,(4370,127,'2012-12-19','2012-12-19 13:46:32',0)
 ,(4371,127,'2012-12-19','2012-12-19 13:48:53',0)
 ,(4372,127,'2012-12-19','2012-12-19 13:49:04',0)
 ,(4373,1,'2012-12-19','2012-12-19 13:51:23',0)
 ,(4374,1,'2012-12-19','2012-12-19 13:53:19',0)
 ,(4375,1,'2012-12-19','2012-12-19 13:54:08',0)
 ,(4376,1,'2012-12-19','2012-12-19 13:54:16',0)
 ,(4377,1,'2012-12-19','2012-12-19 13:55:13',0)
 ,(4378,1,'2012-12-19','2012-12-19 13:55:15',0)
 ,(4379,1,'2012-12-19','2012-12-19 13:57:30',0)
 ,(4380,109,'2012-12-19','2012-12-19 13:58:07',0)
 ,(4381,2,'2012-12-19','2012-12-19 13:58:08',1)
 ,(4382,7,'2012-12-19','2012-12-19 13:58:14',1)
 ,(4383,1,'2012-12-19','2012-12-19 13:58:28',1)
 ,(4384,1,'2012-12-19','2012-12-19 13:59:34',1)
 ,(4385,1,'2012-12-19','2012-12-19 13:59:47',1)
 ,(4386,150,'2012-12-19','2012-12-19 14:00:55',1)
 ,(4387,150,'2012-12-19','2012-12-19 14:01:06',1)
 ,(4388,154,'2012-12-19','2012-12-19 14:01:13',1)
 ,(4389,150,'2012-12-19','2012-12-19 14:01:19',1)
 ,(4390,109,'2012-12-19','2012-12-19 14:02:48',1)
 ,(4391,1,'2012-12-19','2012-12-19 14:02:49',0)
 ,(4392,109,'2012-12-19','2012-12-19 14:07:15',0)
 ,(4393,1,'2012-12-19','2012-12-19 14:07:16',0)
 ,(4394,1,'2012-12-19','2012-12-19 14:07:18',0)
 ,(4395,109,'2012-12-19','2012-12-19 14:07:22',0)
 ,(4396,2,'2012-12-19','2012-12-19 14:07:23',1)
 ,(4397,1,'2012-12-19','2012-12-19 14:07:25',1)
 ,(4398,1,'2012-12-19','2012-12-19 14:07:30',1)
 ,(4399,2,'2012-12-19','2012-12-19 14:21:23',1)
 ,(4400,34,'2012-12-19','2012-12-19 14:21:31',1)
 ,(4401,34,'2012-12-19','2012-12-19 14:22:20',1)
 ,(4402,34,'2012-12-19','2012-12-19 14:22:41',1)
 ,(4403,34,'2012-12-19','2012-12-19 14:22:42',1)
 ,(4404,2,'2012-12-19','2012-12-19 14:22:45',1)
 ,(4405,1,'2012-12-19','2012-12-19 14:30:51',1)
 ,(4406,1,'2012-12-19','2012-12-19 14:31:11',1)
 ,(4407,1,'2012-12-19','2012-12-19 14:31:15',1)
 ,(4408,1,'2012-12-19','2012-12-19 14:31:25',1)
 ,(4409,1,'2012-12-19','2012-12-19 14:31:29',1)
 ,(4410,1,'2012-12-19','2012-12-19 14:32:19',1)
 ,(4411,1,'2012-12-19','2012-12-19 14:33:03',1)
 ,(4412,1,'2012-12-19','2012-12-19 14:34:11',1)
 ,(4413,1,'2012-12-19','2012-12-19 14:35:56',1)
 ,(4414,1,'2012-12-19','2012-12-19 14:36:18',1)
 ,(4415,1,'2012-12-19','2012-12-19 14:37:48',1)
 ,(4416,1,'2012-12-19','2012-12-19 14:38:02',1)
 ,(4417,1,'2012-12-19','2012-12-19 14:39:49',1)
 ,(4418,1,'2012-12-19','2012-12-19 14:40:13',1)
 ,(4419,1,'2012-12-19','2012-12-19 14:40:54',1)
 ,(4420,150,'2012-12-19','2012-12-19 14:40:56',1)
 ,(4421,127,'2012-12-19','2012-12-19 14:40:59',1)
 ,(4422,150,'2012-12-19','2012-12-19 14:41:03',1)
 ,(4423,2,'2012-12-19','2012-12-19 14:47:21',1)
 ,(4424,104,'2012-12-19','2012-12-19 14:47:24',1)
 ,(4425,2,'2012-12-19','2012-12-19 14:47:27',1)
 ,(4426,26,'2012-12-19','2012-12-19 14:47:34',1)
 ,(4427,2,'2012-12-19','2012-12-19 14:47:37',1)
 ,(4428,32,'2012-12-19','2012-12-19 14:47:39',1)
 ,(4429,32,'2012-12-19','2012-12-19 14:47:42',1)
 ,(4430,32,'2012-12-19','2012-12-19 14:47:48',1)
 ,(4431,32,'2012-12-19','2012-12-19 14:47:48',1)
 ,(4432,32,'2012-12-19','2012-12-19 14:47:52',1)
 ,(4433,150,'2012-12-19','2012-12-19 14:47:57',1)
 ,(4434,127,'2012-12-19','2012-12-19 14:48:00',1)
 ,(4435,127,'2012-12-19','2012-12-19 14:48:06',1)
 ,(4436,136,'2012-12-19','2012-12-19 14:48:09',1)
 ,(4437,136,'2012-12-19','2012-12-19 14:48:13',1)
 ,(4438,136,'2012-12-19','2012-12-19 14:48:29',1)
 ,(4439,127,'2012-12-19','2012-12-19 14:48:33',1)
 ,(4440,127,'2012-12-19','2012-12-19 14:48:36',1)
 ,(4441,138,'2012-12-19','2012-12-19 14:48:39',1)
 ,(4442,138,'2012-12-19','2012-12-19 14:48:42',1)
 ,(4443,138,'2012-12-19','2012-12-19 14:48:59',1)
 ,(4444,127,'2012-12-19','2012-12-19 14:49:00',1)
 ,(4445,138,'2012-12-19','2012-12-19 14:49:03',1)
 ,(4446,2,'2012-12-19','2012-12-19 14:49:08',1)
 ,(4447,127,'2012-12-19','2012-12-19 14:49:12',1)
 ,(4448,138,'2012-12-19','2012-12-19 14:49:13',1)
 ,(4449,127,'2012-12-19','2012-12-19 14:49:49',1)
 ,(4450,138,'2012-12-19','2012-12-19 14:49:51',1)
 ,(4451,109,'2012-12-19','2012-12-19 14:49:53',1)
 ,(4452,1,'2012-12-19','2012-12-19 14:49:53',0)
 ,(4453,1,'2012-12-19','2012-12-19 14:49:55',0)
 ,(4454,127,'2012-12-19','2012-12-19 14:49:57',0)
 ,(4455,138,'2012-12-19','2012-12-19 14:50:00',0)
 ,(4456,138,'2012-12-19','2012-12-19 14:50:02',0)
 ,(4457,127,'2012-12-19','2012-12-19 14:50:03',0)
 ,(4458,138,'2012-12-19','2012-12-19 14:50:04',0)
 ,(4459,127,'2012-12-19','2012-12-19 14:51:28',0)
 ,(4460,138,'2012-12-19','2012-12-19 14:51:29',0)
 ,(4461,127,'2012-12-19','2012-12-19 14:52:28',0)
 ,(4462,138,'2012-12-19','2012-12-19 14:52:29',0)
 ,(4463,136,'2012-12-19','2012-12-19 14:52:40',0)
 ,(4464,127,'2012-12-19','2012-12-19 14:52:41',0)
 ,(4465,136,'2012-12-19','2012-12-19 14:52:42',0)
 ,(4466,127,'2012-12-19','2012-12-19 14:53:23',0)
 ,(4467,136,'2012-12-19','2012-12-19 14:53:25',0)
 ,(4468,127,'2012-12-19','2012-12-19 14:54:15',0)
 ,(4469,136,'2012-12-19','2012-12-19 14:54:17',0)
 ,(4470,123,'2012-12-19','2012-12-19 14:55:09',0)
 ,(4471,127,'2012-12-19','2012-12-19 14:55:10',0)
 ,(4472,136,'2012-12-19','2012-12-19 14:55:11',0)
 ,(4473,137,'2012-12-19','2012-12-19 14:55:12',0)
 ,(4474,138,'2012-12-19','2012-12-19 14:55:16',0)
 ,(4475,127,'2012-12-19','2012-12-19 14:55:23',0)
 ,(4476,127,'2012-12-19','2012-12-19 14:55:24',0)
 ,(4477,136,'2012-12-19','2012-12-19 14:55:25',0)
 ,(4478,127,'2012-12-19','2012-12-19 14:55:58',0)
 ,(4479,136,'2012-12-19','2012-12-19 14:55:59',0)
 ,(4480,127,'2012-12-19','2012-12-19 14:56:10',0)
 ,(4481,136,'2012-12-19','2012-12-19 14:56:12',0)
 ,(4482,127,'2012-12-19','2012-12-19 14:56:21',0)
 ,(4483,136,'2012-12-19','2012-12-19 14:56:22',0)
 ,(4484,1,'2012-12-19','2012-12-19 14:56:24',0)
 ,(4485,1,'2012-12-19','2012-12-19 14:56:42',0)
 ,(4486,127,'2012-12-19','2012-12-19 14:56:53',0)
 ,(4487,138,'2012-12-19','2012-12-19 14:56:54',0)
 ,(4488,109,'2012-12-19','2012-12-19 14:57:01',0)
 ,(4489,2,'2012-12-19','2012-12-19 14:57:02',1)
 ,(4490,18,'2012-12-19','2012-12-19 14:57:12',1)
 ,(4491,2,'2012-12-19','2012-12-19 14:57:14',1)
 ,(4492,34,'2012-12-19','2012-12-19 14:57:23',1)
 ,(4493,34,'2012-12-19','2012-12-19 14:57:26',1)
 ,(4494,1,'2012-12-19','2012-12-19 14:57:45',1)
 ,(4495,1,'2012-12-19','2012-12-19 14:57:46',1)
 ,(4496,1,'2012-12-19','2012-12-19 14:58:13',1)
 ,(4497,1,'2012-12-19','2012-12-19 14:59:16',1)
 ,(4498,127,'2012-12-19','2012-12-19 14:59:28',1)
 ,(4499,127,'2012-12-19','2012-12-19 14:59:32',1)
 ,(4500,136,'2012-12-19','2012-12-19 14:59:37',1)
 ,(4501,136,'2012-12-19','2012-12-19 14:59:42',1)
 ,(4502,127,'2012-12-19','2012-12-19 14:59:43',1)
 ,(4503,136,'2012-12-19','2012-12-19 14:59:46',1)
 ,(4504,1,'2012-12-19','2012-12-19 14:59:53',1)
 ,(4505,1,'2012-12-19','2012-12-19 15:01:20',1)
 ,(4506,1,'2012-12-19','2012-12-19 15:01:38',1)
 ,(4507,1,'2012-12-19','2012-12-19 15:02:09',1)
 ,(4508,1,'2012-12-19','2012-12-19 15:02:26',1)
 ,(4509,136,'2012-12-19','2012-12-19 15:02:35',1)
 ,(4510,127,'2012-12-19','2012-12-19 15:02:37',1)
 ,(4511,136,'2012-12-19','2012-12-19 15:02:39',1)
 ,(4512,136,'2012-12-19','2012-12-19 15:02:43',1)
 ,(4513,127,'2012-12-19','2012-12-19 15:02:44',1)
 ,(4514,136,'2012-12-19','2012-12-19 15:02:46',1)
 ,(4515,127,'2012-12-19','2012-12-19 15:02:47',1)
 ,(4516,1,'2012-12-19','2012-12-19 15:02:47',1)
 ,(4517,1,'2012-12-19','2012-12-19 15:02:47',1)
 ,(4518,1,'2012-12-19','2012-12-19 15:02:48',1)
 ,(4519,1,'2012-12-19','2012-12-19 15:09:37',1)
 ,(4520,1,'2012-12-19','2012-12-19 15:09:49',1)
 ,(4521,1,'2012-12-19','2012-12-19 15:10:13',1)
 ,(4522,127,'2012-12-19','2012-12-19 15:10:18',1)
 ,(4523,137,'2012-12-19','2012-12-19 15:10:21',1)
 ,(4524,1,'2012-12-19','2012-12-19 15:10:23',1)
 ,(4525,1,'2012-12-19','2012-12-19 15:11:00',1)
 ,(4526,1,'2012-12-19','2012-12-19 15:11:14',1)
 ,(4527,1,'2012-12-19','2012-12-19 15:14:24',1)
 ,(4528,1,'2012-12-19','2012-12-19 15:14:32',1)
 ,(4529,1,'2012-12-19','2012-12-19 15:14:32',1)
 ,(4530,1,'2012-12-19','2012-12-19 15:14:47',1)
 ,(4531,1,'2012-12-19','2012-12-19 15:15:16',1)
 ,(4532,1,'2012-12-19','2012-12-19 15:15:28',1)
 ,(4533,1,'2012-12-19','2012-12-19 15:15:54',1)
 ,(4534,136,'2012-12-19','2012-12-19 15:16:49',1)
 ,(4535,1,'2012-12-19','2012-12-19 15:16:49',1)
 ,(4536,109,'2012-12-19','2012-12-19 15:17:02',1)
 ,(4537,1,'2012-12-19','2012-12-19 15:17:03',0)
 ,(4538,1,'2012-12-19','2012-12-19 15:17:56',0)
 ,(4539,1,'2012-12-19','2012-12-19 15:21:15',0)
 ,(4540,1,'2012-12-19','2012-12-19 15:23:33',0)
 ,(4541,1,'2012-12-19','2012-12-19 15:23:52',0)
 ,(4542,1,'2012-12-19','2012-12-19 15:24:01',0)
 ,(4543,1,'2012-12-19','2012-12-19 15:24:41',0)
 ,(4544,1,'2012-12-19','2012-12-19 15:25:06',0)
 ,(4545,1,'2012-12-19','2012-12-19 15:25:23',0)
 ,(4546,1,'2012-12-19','2012-12-19 15:26:17',0)
 ,(4547,127,'2012-12-19','2012-12-19 15:31:31',0)
 ,(4548,136,'2012-12-19','2012-12-19 15:31:33',0)
 ,(4549,127,'2012-12-19','2012-12-19 15:32:21',0)
 ,(4550,136,'2012-12-19','2012-12-19 15:32:22',0)
 ,(4551,1,'2012-12-19','2012-12-19 15:32:27',0)
 ,(4552,1,'2012-12-19','2012-12-19 15:35:18',0)
 ,(4553,1,'2012-12-19','2012-12-19 15:35:28',0)
 ,(4554,1,'2012-12-19','2012-12-19 15:37:05',0)
 ,(4555,1,'2012-12-19','2012-12-19 15:38:11',0)
 ,(4556,1,'2012-12-19','2012-12-19 15:39:18',0)
 ,(4557,1,'2012-12-19','2012-12-19 15:39:30',0)
 ,(4558,1,'2012-12-19','2012-12-19 15:43:13',0)
 ,(4559,1,'2012-12-19','2012-12-19 15:43:53',0)
 ,(4560,1,'2012-12-19','2012-12-19 15:44:03',0)
 ,(4561,1,'2012-12-19','2012-12-19 15:44:38',0)
 ,(4562,109,'2012-12-19','2012-12-19 15:44:44',0)
 ,(4563,2,'2012-12-19','2012-12-19 15:44:45',1)
 ,(4564,32,'2012-12-19','2012-12-19 15:44:50',1)
 ,(4565,2,'2012-12-19','2012-12-19 15:44:55',1)
 ,(4566,7,'2012-12-19','2012-12-19 15:45:01',1)
 ,(4567,6,'2012-12-19','2012-12-19 15:45:36',1)
 ,(4568,7,'2012-12-19','2012-12-19 15:45:36',1)
 ,(4569,155,'2012-12-19','2012-12-19 15:45:45',1)
 ,(4570,127,'2012-12-19','2012-12-19 15:45:46',1)
 ,(4571,155,'2012-12-19','2012-12-19 15:45:49',1)
 ,(4572,127,'2012-12-19','2012-12-19 15:45:50',1)
 ,(4573,155,'2012-12-19','2012-12-19 15:45:53',1)
 ,(4574,1,'2012-12-19','2012-12-19 15:46:00',1)
 ,(4575,2,'2012-12-19','2012-12-19 15:46:19',1)
 ,(4576,7,'2012-12-19','2012-12-19 15:46:26',1)
 ,(4577,6,'2012-12-19','2012-12-19 15:47:06',1)
 ,(4578,7,'2012-12-19','2012-12-19 15:47:06',1)
 ,(4579,1,'2012-12-19','2012-12-19 15:47:10',1)
 ,(4580,109,'2012-12-19','2012-12-19 15:47:15',1)
 ,(4581,1,'2012-12-19','2012-12-19 15:47:15',0)
 ,(4582,1,'2012-12-19','2012-12-19 15:48:07',0)
 ,(4583,1,'2012-12-19','2012-12-19 15:48:27',0)
 ,(4584,1,'2012-12-19','2012-12-19 15:49:01',0)
 ,(4585,1,'2012-12-19','2012-12-19 15:50:00',0)
 ,(4586,1,'2012-12-19','2012-12-19 15:50:04',0)
 ,(4587,109,'2012-12-19','2012-12-19 15:50:35',0)
 ,(4588,2,'2012-12-19','2012-12-19 15:50:36',1)
 ,(4589,1,'2012-12-19','2012-12-19 15:50:44',1)
 ,(4590,1,'2012-12-19','2012-12-19 15:50:48',1)
 ,(4591,1,'2012-12-19','2012-12-19 15:52:06',1)
 ,(4592,109,'2012-12-19','2012-12-19 15:52:12',1)
 ,(4593,1,'2012-12-19','2012-12-19 15:52:12',0)
 ,(4594,1,'2012-12-19','2012-12-19 15:54:03',0)
 ,(4595,109,'2012-12-19','2012-12-19 16:00:48',0)
 ,(4596,1,'2012-12-19','2012-12-19 16:00:50',0)
 ,(4597,1,'2012-12-19','2012-12-19 16:00:52',0)
 ,(4598,109,'2012-12-19','2012-12-19 16:00:56',0)
 ,(4599,2,'2012-12-19','2012-12-19 16:00:57',1)
 ,(4600,1,'2012-12-19','2012-12-19 16:00:58',1)
 ,(4601,1,'2012-12-19','2012-12-19 16:01:03',1)
 ,(4602,1,'2012-12-19','2012-12-19 16:01:39',1)
 ,(4603,1,'2012-12-19','2012-12-19 16:02:06',1)
 ,(4604,127,'2012-12-19','2012-12-19 16:03:34',1)
 ,(4605,127,'2012-12-19','2012-12-19 16:04:30',1)
 ,(4606,127,'2012-12-19','2012-12-19 16:05:23',1)
 ,(4607,127,'2012-12-19','2012-12-19 16:06:31',1)
 ,(4608,127,'2012-12-19','2012-12-19 16:06:41',1)
 ,(4609,1,'2012-12-19','2012-12-19 16:06:45',1)
 ,(4610,1,'2012-12-19','2012-12-19 16:06:59',1)
 ,(4611,1,'2012-12-19','2012-12-19 16:07:29',1)
 ,(4612,1,'2012-12-19','2012-12-19 16:07:51',1)
 ,(4613,1,'2012-12-19','2012-12-19 16:07:56',1)
 ,(4614,51,'2012-12-19','2012-12-19 16:08:56',1)
 ,(4615,55,'2012-12-19','2012-12-19 16:09:06',1)
 ,(4616,55,'2012-12-19','2012-12-19 16:09:15',1)
 ,(4617,55,'2012-12-19','2012-12-19 16:09:15',1)
 ,(4618,55,'2012-12-19','2012-12-19 16:09:23',1)
 ,(4619,55,'2012-12-19','2012-12-19 16:09:23',1)
 ,(4620,1,'2012-12-19','2012-12-19 16:09:28',1)
 ,(4621,1,'2012-12-19','2012-12-19 16:09:46',1)
 ,(4622,109,'2012-12-19','2012-12-19 16:09:56',1)
 ,(4623,1,'2012-12-19','2012-12-19 16:09:56',0)
 ,(4624,1,'2012-12-19','2012-12-19 16:10:15',0)
 ,(4625,1,'2012-12-19','2012-12-19 16:10:23',0)
 ,(4626,1,'2012-12-19','2012-12-19 16:10:38',0)
 ,(4627,1,'2012-12-19','2012-12-19 16:10:39',0)
 ,(4628,1,'2012-12-19','2012-12-19 16:11:30',0)
 ,(4629,150,'2012-12-19','2012-12-19 16:12:17',0)
 ,(4630,1,'2012-12-19','2012-12-19 16:14:29',0)
 ,(4631,1,'2012-12-19','2012-12-19 16:14:43',0)
 ,(4632,1,'2012-12-19','2012-12-19 16:14:58',0)
 ,(4633,1,'2012-12-19','2012-12-19 16:15:41',0)
 ,(4634,1,'2012-12-19','2012-12-19 16:15:50',0)
 ,(4635,109,'2012-12-19','2012-12-19 16:15:56',0)
 ,(4636,2,'2012-12-19','2012-12-19 16:15:57',1)
 ,(4637,1,'2012-12-19','2012-12-19 16:16:01',1)
 ,(4638,1,'2012-12-19','2012-12-19 16:16:06',1)
 ,(4639,1,'2012-12-19','2012-12-19 16:16:56',1)
 ,(4640,1,'2012-12-19','2012-12-19 16:17:03',1)
 ,(4641,1,'2012-12-19','2012-12-19 16:17:15',1)
 ,(4642,150,'2012-12-19','2012-12-19 16:17:40',1)
 ,(4643,2,'2012-12-19','2012-12-19 16:34:24',1)
 ,(4644,1,'2012-12-19','2012-12-19 16:34:25',1)
 ,(4645,1,'2012-12-19','2012-12-19 16:34:35',1)
 ,(4646,1,'2012-12-19','2012-12-19 16:34:51',1)
 ,(4647,1,'2012-12-19','2012-12-19 16:34:59',1)
 ,(4648,1,'2012-12-19','2012-12-19 16:37:38',1)
 ,(4649,1,'2012-12-19','2012-12-19 16:37:47',1)
 ,(4650,1,'2012-12-19','2012-12-19 16:38:21',1)
 ,(4651,1,'2012-12-19','2012-12-19 16:39:21',1)
 ,(4652,1,'2012-12-19','2012-12-19 16:39:51',1)
 ,(4653,1,'2012-12-19','2012-12-19 16:40:03',1)
 ,(4654,1,'2012-12-19','2012-12-19 16:40:28',1)
 ,(4655,1,'2012-12-19','2012-12-19 16:41:05',1)
 ,(4656,1,'2012-12-19','2012-12-19 16:41:47',1)
 ,(4657,1,'2012-12-19','2012-12-19 16:42:01',1)
 ,(4658,1,'2012-12-19','2012-12-19 16:42:18',1)
 ,(4659,1,'2012-12-19','2012-12-19 16:51:50',1)
 ,(4660,1,'2012-12-19','2012-12-19 16:56:08',1)
 ,(4661,1,'2012-12-19','2012-12-19 16:58:34',1)
 ,(4662,1,'2012-12-20','2012-12-20 11:15:08',1)
 ,(4663,1,'2012-12-20','2012-12-20 11:16:25',1)
 ,(4664,1,'2012-12-20','2012-12-20 11:16:37',1)
 ,(4665,1,'2012-12-20','2012-12-20 11:16:52',1)
 ,(4666,1,'2012-12-20','2012-12-20 11:17:26',1)
 ,(4667,1,'2012-12-20','2012-12-20 11:17:38',1)
 ,(4668,1,'2012-12-20','2012-12-20 11:23:12',1)
 ,(4669,1,'2012-12-20','2012-12-20 11:23:21',1)
 ,(4670,1,'2012-12-20','2012-12-20 11:24:27',1)
 ,(4671,1,'2012-12-20','2012-12-20 11:25:04',1)
 ,(4672,1,'2012-12-20','2012-12-20 11:25:43',1)
 ,(4673,1,'2012-12-20','2012-12-20 11:27:38',1)
 ,(4674,1,'2012-12-20','2012-12-20 11:28:01',1)
 ,(4675,1,'2012-12-20','2012-12-20 11:28:13',1)
 ,(4676,1,'2012-12-20','2012-12-20 11:28:21',1)
 ,(4677,1,'2012-12-20','2012-12-20 11:28:42',1)
 ,(4678,1,'2012-12-20','2012-12-20 11:29:51',1)
 ,(4679,1,'2012-12-20','2012-12-20 11:30:05',1)
 ,(4680,1,'2012-12-20','2012-12-20 11:30:19',1)
 ,(4681,1,'2012-12-20','2012-12-20 11:41:25',1)
 ,(4682,1,'2012-12-20','2012-12-20 11:41:42',1)
 ,(4683,1,'2012-12-20','2012-12-20 11:41:51',1)
 ,(4684,1,'2012-12-20','2012-12-20 11:41:58',1)
 ,(4685,150,'2012-12-20','2012-12-20 11:42:04',1)
 ,(4686,1,'2012-12-20','2012-12-20 11:42:07',1)
 ,(4687,1,'2012-12-20','2012-12-20 11:44:17',1)
 ,(4688,1,'2012-12-20','2012-12-20 11:44:48',1)
 ,(4689,1,'2012-12-20','2012-12-20 11:45:22',1)
 ,(4690,1,'2012-12-20','2012-12-20 11:47:13',1)
 ,(4691,1,'2012-12-20','2012-12-20 11:47:26',1)
 ,(4692,1,'2012-12-20','2012-12-20 11:48:51',1)
 ,(4693,154,'2012-12-20','2012-12-20 11:49:47',1)
 ,(4694,1,'2012-12-20','2012-12-20 11:51:14',1)
 ,(4695,154,'2012-12-20','2012-12-20 11:52:51',1)
 ,(4696,1,'2012-12-20','2012-12-20 11:52:53',1)
 ,(4697,1,'2012-12-20','2012-12-20 11:55:01',1)
 ,(4698,1,'2012-12-20','2012-12-20 11:55:33',1)
 ,(4699,1,'2012-12-20','2012-12-20 11:56:31',1)
 ,(4700,1,'2012-12-20','2012-12-20 11:56:39',1)
 ,(4701,1,'2012-12-20','2012-12-20 11:57:02',1)
 ,(4702,1,'2012-12-20','2012-12-20 11:57:19',1)
 ,(4703,1,'2012-12-20','2012-12-20 11:58:21',1)
 ,(4704,1,'2012-12-20','2012-12-20 11:59:09',1)
 ,(4705,1,'2012-12-20','2012-12-20 11:59:37',1)
 ,(4706,1,'2012-12-20','2012-12-20 12:00:07',1)
 ,(4707,1,'2012-12-20','2012-12-20 12:00:28',1)
 ,(4708,1,'2012-12-20','2012-12-20 12:01:00',1)
 ,(4709,1,'2012-12-20','2012-12-20 12:01:18',1)
 ,(4710,109,'2012-12-20','2012-12-20 12:01:38',1)
 ,(4711,1,'2012-12-20','2012-12-20 12:01:39',0)
 ,(4712,1,'2012-12-20','2012-12-20 12:03:10',0)
 ,(4713,1,'2012-12-20','2012-12-20 12:03:31',0)
 ,(4714,1,'2012-12-20','2012-12-20 12:04:20',0)
 ,(4715,150,'2012-12-20','2012-12-20 12:17:04',0)
 ,(4716,127,'2012-12-20','2012-12-20 12:17:07',0)
 ,(4717,127,'2012-12-20','2012-12-20 12:18:02',0)
 ,(4718,127,'2012-12-20','2012-12-20 12:19:11',0)
 ,(4719,1,'2012-12-20','2012-12-20 12:20:15',0)
 ,(4720,1,'2012-12-20','2012-12-20 12:21:34',0)
 ,(4721,1,'2012-12-20','2012-12-20 12:22:06',0)
 ,(4722,1,'2012-12-20','2012-12-20 12:22:19',0)
 ,(4723,1,'2012-12-20','2012-12-20 12:22:22',0)
 ,(4724,1,'2012-12-20','2012-12-20 12:25:52',0)
 ,(4725,1,'2012-12-20','2012-12-20 12:26:17',0)
 ,(4726,1,'2012-12-20','2012-12-20 12:26:26',0)
 ,(4727,1,'2012-12-20','2012-12-20 12:26:27',0)
 ,(4728,109,'2012-12-20','2012-12-20 12:26:36',0)
 ,(4729,1,'2012-12-20','2012-12-20 12:26:36',0)
 ,(4730,1,'2012-12-20','2012-12-20 12:26:49',0)
 ,(4731,1,'2012-12-20','2012-12-20 12:28:28',0)
 ,(4732,1,'2012-12-20','2012-12-20 12:29:37',0)
 ,(4733,1,'2012-12-20','2012-12-20 12:29:52',0)
 ,(4734,1,'2012-12-20','2012-12-20 12:30:18',0)
 ,(4735,1,'2012-12-20','2012-12-20 12:30:45',0)
 ,(4736,1,'2012-12-20','2012-12-20 12:31:37',0)
 ,(4737,1,'2012-12-20','2012-12-20 12:32:36',0)
 ,(4738,1,'2012-12-20','2012-12-20 12:33:00',0)
 ,(4739,1,'2012-12-20','2012-12-20 12:34:37',0)
 ,(4740,1,'2012-12-20','2012-12-20 12:36:51',0)
 ,(4741,1,'2012-12-20','2012-12-20 12:37:00',0)
 ,(4742,1,'2012-12-20','2012-12-20 12:38:19',0)
 ,(4743,1,'2012-12-20','2012-12-20 12:39:16',0)
 ,(4744,1,'2012-12-20','2012-12-20 12:40:27',0)
 ,(4745,1,'2012-12-20','2012-12-20 12:41:49',0)
 ,(4746,1,'2012-12-20','2012-12-20 12:41:57',0)
 ,(4747,1,'2012-12-20','2012-12-20 12:43:36',0)
 ,(4748,1,'2012-12-20','2012-12-20 12:44:30',0)
 ,(4749,1,'2012-12-20','2012-12-20 12:45:02',0)
 ,(4750,1,'2012-12-20','2012-12-20 12:45:21',0)
 ,(4751,1,'2012-12-20','2012-12-20 12:45:32',0)
 ,(4752,1,'2012-12-20','2012-12-20 12:46:03',0)
 ,(4753,1,'2012-12-20','2012-12-20 12:46:18',0)
 ,(4754,1,'2012-12-20','2012-12-20 12:47:05',0)
 ,(4755,1,'2012-12-20','2012-12-20 12:47:27',0)
 ,(4756,1,'2012-12-20','2012-12-20 12:47:36',0)
 ,(4757,1,'2012-12-20','2012-12-20 12:47:51',0)
 ,(4758,1,'2012-12-20','2012-12-20 12:47:59',0)
 ,(4759,1,'2012-12-20','2012-12-20 12:48:08',0)
 ,(4760,1,'2012-12-20','2012-12-20 12:48:33',0)
 ,(4761,1,'2012-12-20','2012-12-20 12:48:35',0)
 ,(4762,1,'2012-12-20','2012-12-20 12:49:26',0)
 ,(4763,1,'2012-12-20','2012-12-20 12:50:08',0)
 ,(4764,1,'2012-12-20','2012-12-20 12:50:28',0)
 ,(4765,1,'2012-12-20','2012-12-20 12:50:48',0)
 ,(4766,1,'2012-12-20','2012-12-20 12:51:29',0)
 ,(4767,1,'2012-12-20','2012-12-20 12:51:42',0)
 ,(4768,1,'2012-12-20','2012-12-20 12:52:08',0)
 ,(4769,1,'2012-12-20','2012-12-20 12:52:40',0)
 ,(4770,1,'2012-12-20','2012-12-20 12:52:51',0)
 ,(4771,1,'2012-12-20','2012-12-20 12:52:57',0)
 ,(4772,1,'2012-12-20','2012-12-20 12:53:19',0)
 ,(4773,1,'2012-12-20','2012-12-20 12:53:41',0)
 ,(4774,1,'2012-12-20','2012-12-20 12:54:09',0)
 ,(4775,1,'2012-12-20','2012-12-20 12:55:04',0)
 ,(4776,1,'2012-12-20','2012-12-20 12:55:25',0)
 ,(4777,1,'2012-12-20','2012-12-20 13:07:39',0)
 ,(4778,1,'2012-12-20','2012-12-20 13:08:36',0)
 ,(4779,1,'2012-12-20','2012-12-20 13:08:55',0)
 ,(4780,1,'2012-12-20','2012-12-20 13:22:38',0)
 ,(4781,1,'2012-12-20','2012-12-20 13:23:36',0)
 ,(4782,1,'2012-12-20','2012-12-20 13:24:13',0)
 ,(4783,1,'2012-12-20','2012-12-20 13:24:53',0)
 ,(4784,1,'2012-12-20','2012-12-20 13:25:18',0)
 ,(4785,1,'2012-12-20','2012-12-20 13:26:02',0)
 ,(4786,1,'2012-12-20','2012-12-20 13:26:07',0)
 ,(4787,1,'2012-12-20','2012-12-20 13:27:07',0)
 ,(4788,1,'2012-12-20','2012-12-20 13:27:57',0)
 ,(4789,1,'2012-12-20','2012-12-20 13:28:02',0)
 ,(4790,1,'2012-12-20','2012-12-20 13:28:06',0)
 ,(4791,1,'2012-12-20','2012-12-20 13:28:19',0)
 ,(4792,1,'2012-12-20','2012-12-20 13:28:24',0)
 ,(4793,1,'2012-12-20','2012-12-20 13:28:32',0)
 ,(4794,1,'2012-12-20','2012-12-20 13:28:39',0)
 ,(4795,1,'2012-12-20','2012-12-20 13:28:57',0)
 ,(4796,1,'2012-12-20','2012-12-20 13:29:25',0)
 ,(4797,1,'2012-12-20','2012-12-20 13:30:07',0)
 ,(4798,1,'2012-12-20','2012-12-20 13:30:12',0)
 ,(4799,1,'2012-12-20','2012-12-20 13:30:19',0)
 ,(4800,1,'2012-12-20','2012-12-20 13:30:49',0)
 ,(4801,1,'2012-12-20','2012-12-20 13:31:11',0)
 ,(4802,1,'2012-12-20','2012-12-20 13:31:17',0)
 ,(4803,1,'2012-12-20','2012-12-20 13:31:31',0)
 ,(4804,1,'2012-12-20','2012-12-20 13:32:09',0)
 ,(4805,1,'2012-12-20','2012-12-20 13:32:11',0)
 ,(4806,1,'2012-12-20','2012-12-20 13:32:31',0)
 ,(4807,1,'2012-12-20','2012-12-20 13:33:04',0)
 ,(4808,1,'2012-12-20','2012-12-20 13:33:36',0)
 ,(4809,1,'2012-12-20','2012-12-20 13:34:01',0)
 ,(4810,1,'2012-12-20','2012-12-20 14:56:26',0)
 ,(4811,109,'2012-12-20','2012-12-20 15:03:43',0)
 ,(4812,2,'2012-12-20','2012-12-20 15:03:44',1)
 ,(4813,104,'2012-12-20','2012-12-20 15:03:47',1)
 ,(4814,32,'2012-12-20','2012-12-20 15:08:03',1)
 ,(4815,33,'2012-12-20','2012-12-20 15:08:20',1)
 ,(4816,33,'2012-12-20','2012-12-20 15:09:00',1)
 ,(4817,32,'2012-12-20','2012-12-20 15:09:01',1)
 ,(4818,32,'2012-12-20','2012-12-20 15:09:11',1)
 ,(4819,9,'2012-12-20','2012-12-20 15:09:19',1)
 ,(4820,7,'2012-12-20','2012-12-20 15:09:28',1)
 ,(4821,9,'2012-12-20','2012-12-20 15:09:35',1)
 ,(4822,9,'2012-12-20','2012-12-20 15:09:35',1)
 ,(4823,34,'2012-12-20','2012-12-20 15:09:36',1)
 ,(4824,32,'2012-12-20','2012-12-20 15:09:37',1)
 ,(4825,32,'2012-12-20','2012-12-20 15:09:37',1)
 ,(4826,32,'2012-12-20','2012-12-20 15:09:38',1)
 ,(4827,33,'2012-12-20','2012-12-20 15:10:16',1)
 ,(4828,33,'2012-12-20','2012-12-20 15:10:29',1)
 ,(4829,32,'2012-12-20','2012-12-20 15:10:29',1)
 ,(4830,7,'2012-12-20','2012-12-20 15:10:42',1)
 ,(4831,6,'2012-12-20','2012-12-20 15:11:01',1)
 ,(4832,7,'2012-12-20','2012-12-20 15:11:01',1)
 ,(4833,2,'2012-12-20','2012-12-20 15:11:10',1)
 ,(4834,4,'2012-12-20','2012-12-20 15:11:16',1)
 ,(4835,2,'2012-12-20','2012-12-20 15:11:20',1)
 ,(4836,7,'2012-12-20','2012-12-20 15:11:24',1)
 ,(4837,6,'2012-12-20','2012-12-20 15:11:46',1)
 ,(4838,7,'2012-12-20','2012-12-20 15:11:46',1)
 ,(4839,6,'2012-12-20','2012-12-20 15:12:13',1)
 ,(4840,7,'2012-12-20','2012-12-20 15:12:13',1)
 ,(4841,6,'2012-12-20','2012-12-20 15:12:45',1)
 ,(4842,7,'2012-12-20','2012-12-20 15:12:45',1)
 ,(4843,6,'2012-12-20','2012-12-20 15:13:05',1)
 ,(4844,7,'2012-12-20','2012-12-20 15:13:06',1)
 ,(4845,1,'2012-12-20','2012-12-20 15:14:08',1)
 ,(4846,154,'2012-12-20','2012-12-20 15:14:11',1)
 ,(4847,159,'2012-12-20','2012-12-20 15:14:14',1)
 ,(4848,159,'2012-12-20','2012-12-20 15:14:44',1)
 ,(4849,159,'2012-12-20','2012-12-20 15:14:49',1)
 ,(4850,2,'2012-12-20','2012-12-20 15:14:54',1)
 ,(4851,32,'2012-12-20','2012-12-20 15:15:02',1)
 ,(4852,32,'2012-12-20','2012-12-20 15:15:07',1)
 ,(4853,7,'2012-12-20','2012-12-20 15:15:23',1)
 ,(4854,32,'2012-12-20','2012-12-20 15:15:55',1)
 ,(4855,159,'2012-12-20','2012-12-20 15:15:56',1)
 ,(4856,159,'2012-12-20','2012-12-20 15:15:57',1)
 ,(4857,159,'2012-12-20','2012-12-20 15:16:06',1)
 ,(4858,7,'2012-12-20','2012-12-20 15:16:16',1)
 ,(4859,159,'2012-12-20','2012-12-20 15:16:36',1)
 ,(4860,159,'2012-12-20','2012-12-20 15:17:04',1)
 ,(4861,159,'2012-12-20','2012-12-20 15:17:29',1)
 ,(4862,160,'2012-12-20','2012-12-20 15:48:33',1)
 ,(4863,160,'2012-12-20','2012-12-20 15:49:42',1)
 ,(4864,160,'2012-12-20','2012-12-20 15:49:57',1)
 ,(4865,7,'2012-12-20','2012-12-20 15:50:13',1)
 ,(4866,160,'2012-12-20','2012-12-20 15:50:17',1)
 ,(4867,7,'2012-12-20','2012-12-20 15:50:25',1)
 ,(4868,159,'2012-12-20','2012-12-20 15:50:59',1)
 ,(4869,160,'2012-12-20','2012-12-20 15:51:03',1)
 ,(4870,160,'2012-12-20','2012-12-20 15:51:14',1)
 ,(4871,160,'2012-12-20','2012-12-20 15:51:43',1)
 ,(4872,160,'2012-12-20','2012-12-20 15:51:52',1)
 ,(4873,160,'2012-12-20','2012-12-20 15:52:03',1)
 ,(4874,160,'2012-12-20','2012-12-20 15:53:14',1)
 ,(4875,159,'2012-12-20','2012-12-20 15:53:36',1)
 ,(4876,154,'2012-12-20','2012-12-20 15:53:42',1)
 ,(4877,159,'2012-12-20','2012-12-20 15:53:45',1)
 ,(4878,160,'2012-12-20','2012-12-20 15:53:46',1)
 ,(4879,160,'2012-12-20','2012-12-20 15:53:56',1)
 ,(4880,160,'2012-12-20','2012-12-20 15:55:01',1)
 ,(4881,160,'2012-12-20','2012-12-20 15:55:24',1)
 ,(4882,160,'2012-12-20','2012-12-20 15:55:32',1)
 ,(4883,160,'2012-12-20','2012-12-20 15:55:40',1)
 ,(4884,160,'2012-12-20','2012-12-20 15:59:00',1)
 ,(4885,160,'2012-12-20','2012-12-20 15:59:08',1)
 ,(4886,160,'2012-12-20','2012-12-20 16:00:03',1)
 ,(4887,159,'2012-12-20','2012-12-20 16:02:23',1)
 ,(4888,160,'2012-12-20','2012-12-20 16:02:25',1)
 ,(4889,160,'2012-12-20','2012-12-20 16:02:40',1)
 ,(4890,159,'2012-12-20','2012-12-20 16:02:59',1)
 ,(4891,160,'2012-12-20','2012-12-20 16:03:01',1)
 ,(4892,159,'2012-12-20','2012-12-20 16:10:23',1)
 ,(4893,160,'2012-12-20','2012-12-20 16:22:18',1)
 ,(4894,160,'2012-12-20','2012-12-20 16:22:28',1)
 ,(4895,160,'2012-12-20','2012-12-20 16:22:31',1)
 ,(4896,160,'2012-12-20','2012-12-20 16:22:46',1)
 ,(4897,161,'2012-12-20','2012-12-20 16:23:24',1)
 ,(4898,159,'2012-12-20','2012-12-20 16:24:55',1)
 ,(4899,159,'2012-12-20','2012-12-20 16:25:03',1)
 ,(4900,159,'2012-12-20','2012-12-20 16:25:11',1)
 ,(4901,159,'2012-12-20','2012-12-20 16:25:24',1)
 ,(4902,159,'2012-12-20','2012-12-20 16:25:34',1)
 ,(4903,159,'2012-12-20','2012-12-20 16:25:39',1)
 ,(4904,159,'2012-12-20','2012-12-20 16:25:45',1)
 ,(4905,1,'2012-12-20','2012-12-20 16:25:50',1)
 ,(4906,1,'2012-12-20','2012-12-20 16:26:07',1)
 ,(4907,1,'2012-12-20','2012-12-20 16:26:52',1)
 ,(4908,1,'2012-12-20','2012-12-20 16:27:00',1)
 ,(4909,1,'2012-12-20','2012-12-20 16:28:51',1)
 ,(4910,1,'2012-12-20','2012-12-20 16:28:56',1)
 ,(4911,161,'2012-12-20','2012-12-20 16:29:52',1)
 ,(4912,1,'2012-12-20','2012-12-20 16:36:35',1)
 ,(4913,136,'2012-12-20','2012-12-20 16:37:53',1)
 ,(4914,127,'2012-12-20','2012-12-20 16:37:55',1)
 ,(4915,136,'2012-12-20','2012-12-20 16:37:58',1)
 ,(4916,136,'2012-12-20','2012-12-20 16:38:06',1)
 ,(4917,127,'2012-12-20','2012-12-20 16:38:08',1)
 ,(4918,136,'2012-12-20','2012-12-20 16:38:11',1)
 ,(4919,109,'2012-12-20','2012-12-20 16:38:21',1)
 ,(4920,1,'2012-12-20','2012-12-20 16:38:21',0)
 ,(4921,109,'2012-12-20','2012-12-20 16:41:20',0)
 ,(4922,2,'2012-12-20','2012-12-20 16:41:21',1)
 ,(4923,2,'2012-12-20','2012-12-20 16:41:24',1)
 ,(4924,1,'2012-12-20','2012-12-20 16:41:28',1)
 ,(4925,2,'2012-12-20','2012-12-20 16:41:49',1)
 ,(4926,1,'2012-12-20','2012-12-20 16:41:53',1)
 ,(4927,1,'2012-12-20','2012-12-20 16:41:59',1)
 ,(4928,109,'2012-12-20','2012-12-20 16:43:00',1)
 ,(4929,1,'2012-12-20','2012-12-20 16:43:00',0)
 ,(4930,1,'2012-12-20','2012-12-20 17:09:22',0)
 ,(4931,159,'2012-12-20','2012-12-20 17:09:26',0)
 ,(4932,159,'2012-12-20','2012-12-20 17:09:40',0)
 ,(4933,159,'2012-12-20','2012-12-20 17:10:05',0)
 ,(4934,159,'2012-12-20','2012-12-20 17:10:12',0)
 ,(4935,159,'2012-12-20','2012-12-20 17:12:04',0)
 ,(4936,159,'2012-12-20','2012-12-20 17:12:19',0)
 ,(4937,159,'2012-12-20','2012-12-20 17:34:32',0)
 ,(4938,159,'2012-12-20','2012-12-20 17:35:20',0)
 ,(4939,159,'2012-12-20','2012-12-20 17:35:25',0)
 ,(4940,159,'2012-12-20','2012-12-20 17:35:36',0)
 ,(4941,159,'2012-12-20','2012-12-20 17:35:48',0)
 ,(4942,159,'2012-12-20','2012-12-20 17:36:06',0)
 ,(4943,159,'2012-12-20','2012-12-20 17:36:21',0)
 ,(4944,159,'2012-12-20','2012-12-20 17:36:48',0)
 ,(4945,159,'2012-12-20','2012-12-20 17:38:27',0)
 ,(4946,159,'2012-12-20','2012-12-20 17:38:39',0)
 ,(4947,159,'2012-12-20','2012-12-20 17:38:46',0)
 ,(4948,159,'2012-12-20','2012-12-20 17:39:06',0)
 ,(4949,159,'2012-12-20','2012-12-20 17:39:17',0)
 ,(4950,159,'2012-12-20','2012-12-20 17:39:40',0)
 ,(4951,159,'2012-12-20','2012-12-20 17:40:17',0)
 ,(4952,159,'2012-12-20','2012-12-20 17:40:32',0)
 ,(4953,159,'2012-12-20','2012-12-20 17:41:10',0)
 ,(4954,1,'2012-12-20','2012-12-20 17:41:20',0)
 ,(4955,1,'2012-12-20','2012-12-20 17:41:30',0)
 ,(4956,159,'2012-12-20','2012-12-20 17:41:32',0)
 ,(4957,159,'2012-12-20','2012-12-20 17:42:15',0)
 ,(4958,1,'2012-12-20','2012-12-20 17:42:18',0)
 ,(4959,1,'2012-12-20','2012-12-20 17:42:34',0)
 ,(4960,1,'2012-12-20','2012-12-20 17:42:46',0)
 ,(4961,1,'2012-12-20','2012-12-20 17:42:47',0)
 ,(4962,1,'2012-12-20','2012-12-20 17:43:39',0)
 ,(4963,109,'2012-12-21','2012-12-21 11:36:07',0)
 ,(4964,2,'2012-12-21','2012-12-21 11:36:08',1)
 ,(4965,159,'2012-12-21','2012-12-21 11:36:15',1)
 ,(4966,164,'2012-12-21','2012-12-21 11:37:21',1)
 ,(4967,164,'2012-12-21','2012-12-21 11:37:26',1)
 ,(4968,159,'2012-12-21','2012-12-21 11:37:30',1)
 ,(4969,159,'2012-12-21','2012-12-21 11:37:42',1)
 ,(4970,7,'2012-12-21','2012-12-21 11:37:52',1)
 ,(4971,1,'2012-12-21','2012-12-21 11:38:01',1)
 ,(4972,127,'2012-12-21','2012-12-21 11:38:05',1)
 ,(4973,127,'2012-12-21','2012-12-21 11:38:08',1)
 ,(4974,136,'2012-12-21','2012-12-21 11:38:12',1)
 ,(4975,1,'2012-12-21','2012-12-21 11:38:35',1)
 ,(4976,159,'2012-12-21','2012-12-21 11:39:59',1)
 ,(4977,159,'2012-12-21','2012-12-21 13:15:55',1)
 ,(4978,1,'2012-12-21','2012-12-21 13:15:58',1)
 ,(4979,1,'2012-12-21','2012-12-21 13:18:38',1)
 ,(4980,1,'2012-12-21','2012-12-21 13:19:12',1)
 ,(4981,1,'2012-12-21','2012-12-21 13:20:42',1)
 ,(4982,1,'2012-12-21','2012-12-21 13:22:38',1)
 ,(4983,1,'2012-12-21','2012-12-21 13:22:43',1)
 ,(4984,1,'2012-12-21','2012-12-21 13:23:05',1)
 ,(4985,1,'2012-12-21','2012-12-21 13:23:31',1)
 ,(4986,1,'2012-12-21','2012-12-21 13:23:45',1)
 ,(4987,1,'2012-12-21','2012-12-21 13:24:02',1)
 ,(4988,2,'2012-12-21','2012-12-21 13:25:49',1)
 ,(4989,160,'2012-12-21','2012-12-21 13:27:03',1)
 ,(4990,1,'2012-12-21','2012-12-21 13:27:17',1)
 ,(4991,159,'2012-12-21','2012-12-21 13:43:00',1)
 ,(4992,154,'2012-12-21','2012-12-21 14:42:52',1)
 ,(4993,150,'2012-12-21','2012-12-21 14:43:03',1)
 ,(4994,127,'2012-12-21','2012-12-21 14:43:06',1)
 ,(4995,109,'2012-12-21','2012-12-21 14:43:18',1)
 ,(4996,1,'2012-12-21','2012-12-21 14:43:19',0)
 ,(4997,127,'2012-12-21','2012-12-21 14:43:22',0)
 ,(4998,136,'2012-12-21','2012-12-21 14:43:25',0)
 ,(4999,109,'2012-12-21','2012-12-21 14:45:28',0)
 ,(5000,2,'2012-12-21','2012-12-21 14:45:29',1)
 ,(5001,127,'2012-12-21','2012-12-21 14:45:32',1)
 ,(5002,127,'2012-12-21','2012-12-21 14:45:35',1)
 ,(5003,127,'2012-12-21','2012-12-21 14:48:52',1)
 ,(5004,109,'2012-12-21','2012-12-21 14:48:57',1)
 ,(5005,1,'2012-12-21','2012-12-21 14:48:57',0)
 ,(5006,150,'2012-12-21','2012-12-21 14:52:13',0)
 ,(5007,1,'2012-12-21','2012-12-21 14:52:17',0)
 ,(5008,109,'2012-12-21','2012-12-21 14:52:24',0)
 ,(5009,150,'2012-12-21','2012-12-21 14:52:25',0)
 ,(5010,2,'2012-12-21','2012-12-21 14:52:25',1)
 ,(5011,150,'2012-12-21','2012-12-21 14:52:28',1)
 ,(5012,150,'2012-12-21','2012-12-21 14:52:31',1)
 ,(5013,150,'2012-12-21','2012-12-21 14:52:38',1)
 ,(5014,165,'2012-12-21','2012-12-21 14:53:05',1)
 ,(5015,165,'2012-12-21','2012-12-21 14:53:38',1)
 ,(5016,150,'2012-12-21','2012-12-21 14:53:40',1)
 ,(5017,165,'2012-12-21','2012-12-21 14:53:42',1)
 ,(5018,152,'2012-12-21','2012-12-21 14:54:16',1)
 ,(5019,1,'2012-12-21','2012-12-21 14:54:19',1)
 ,(5020,2,'2012-12-21','2012-12-21 16:14:12',1)
 ,(5021,104,'2012-12-21','2012-12-21 16:14:14',1)
 ,(5022,44,'2012-12-21','2012-12-21 16:14:26',1)
 ,(5023,46,'2012-12-21','2012-12-21 16:14:26',1)
 ,(5024,51,'2012-12-21','2012-12-21 16:14:27',1)
 ,(5025,97,'2012-12-21','2012-12-21 16:14:32',1)
 ,(5026,97,'2012-12-21','2012-12-21 16:14:36',1);

DROP TABLE IF EXISTS PageThemeStyles;

CREATE TABLE IF NOT EXISTS `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PageThemes;

CREATE TABLE IF NOT EXISTS `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO PageThemes VALUES(1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0)
 ,(5,'beamon','Beamon Theme','Beamon Consulting',0);

DROP TABLE IF EXISTS PageTypes;

CREATE TABLE IF NOT EXISTS `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO PageTypes VALUES(1,'core_stack','main.png','Stack',1,0)
 ,(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0)
 ,(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0)
 ,(4,'right_sidebar','right_sidebar.png','Right Sidebar',0,0)
 ,(6,'project','main.png','Project',0,0)
 ,(7,'listing','main.png','Listing Page',0,0)
 ,(8,'bubblelink','6','Bubble link',0,0)
 ,(9,'person','main.png','Person',0,0)
 ,(10,'competence','main.png','Kompetenser',0,0)
 ,(11,'news_page','main.png','News Page',0,0)
 ,(12,'news_listing','main.png','News Listing',0,0);

DROP TABLE IF EXISTS Pages;

CREATE TABLE IF NOT EXISTS `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO Pages VALUES(1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,16,0,0,0,-1,'0',0,0)
 ,(2,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,-1,'0',0,1)
 ,(3,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,-1,'0',0,1)
 ,(4,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,-1,'0',0,1)
 ,(5,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,-1,'0',0,1)
 ,(6,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,-1,'0',0,1)
 ,(7,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,-1,'0',0,1)
 ,(8,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,-1,'0',0,1)
 ,(9,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,-1,'0',0,1)
 ,(10,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,-1,'0',0,1)
 ,(11,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,-1,'0',0,1)
 ,(12,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,-1,'0',0,1)
 ,(13,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,-1,'0',0,1)
 ,(14,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,-1,'0',0,1)
 ,(15,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,6,3,2,0,-1,'0',0,1)
 ,(16,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,-1,'0',0,1)
 ,(17,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,-1,'0',0,1)
 ,(18,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,-1,'0',0,1)
 ,(19,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,-1,'0',0,1)
 ,(20,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,-1,'0',0,1)
 ,(21,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,15,0,-1,'0',0,1)
 ,(22,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,-1,'0',0,1)
 ,(23,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,22,0,-1,'0',0,1)
 ,(24,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,22,0,-1,'0',0,1)
 ,(25,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,22,0,-1,'0',0,1)
 ,(26,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,22,0,-1,'0',0,1)
 ,(27,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,-1,'0',0,1)
 ,(28,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,27,0,-1,'0',0,1)
 ,(29,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,28,0,-1,'0',0,1)
 ,(30,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,28,0,-1,'0',0,1)
 ,(31,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,28,0,-1,'0',0,1)
 ,(32,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,27,0,-1,'0',0,1)
 ,(33,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,32,0,-1,'0',0,1)
 ,(34,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,27,0,-1,'0',0,1)
 ,(35,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,27,0,-1,'0',0,1)
 ,(36,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,-1,'0',0,1)
 ,(37,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/list.php',0,NULL,0,1,0,0,36,0,-1,'0',0,1)
 ,(38,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,36,0,-1,'0',0,1)
 ,(39,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,-1,'0',0,1)
 ,(40,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,39,0,-1,'0',0,1)
 ,(41,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,39,0,-1,'0',0,1)
 ,(42,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,40,0,-1,'0',0,1)
 ,(43,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,39,0,-1,'0',0,1)
 ,(44,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,-1,'0',0,1)
 ,(45,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,-1,'0',0,1)
 ,(46,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,44,0,-1,'0',0,1)
 ,(47,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,44,0,-1,'0',0,1)
 ,(48,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,44,0,-1,'0',0,1)
 ,(49,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,44,0,-1,'0',0,1)
 ,(50,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,44,0,-1,'0',0,1)
 ,(51,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,10,2,0,-1,'0',0,1)
 ,(52,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,51,0,-1,'0',0,1)
 ,(53,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,52,0,-1,'0',0,1)
 ,(54,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,52,0,-1,'0',0,1)
 ,(55,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,52,0,-1,'0',0,1)
 ,(56,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,52,0,-1,'0',0,1)
 ,(57,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,52,0,-1,'0',0,1)
 ,(58,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,52,0,-1,'0',0,1)
 ,(59,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,1,51,0,-1,'0',0,1)
 ,(60,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,59,0,-1,'0',0,1)
 ,(61,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk_seo_tool.php',0,NULL,0,1,0,1,59,0,-1,'0',0,1)
 ,(62,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,2,59,0,-1,'0',0,1)
 ,(63,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,3,59,0,-1,'0',0,1)
 ,(64,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,4,59,0,-1,'0',0,1)
 ,(65,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,51,0,-1,'0',0,1)
 ,(66,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,65,0,-1,'0',0,1)
 ,(67,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,65,0,-1,'0',0,1)
 ,(68,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,65,0,-1,'0',0,1)
 ,(69,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,3,51,0,-1,'0',0,1)
 ,(70,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,69,0,-1,'0',0,1)
 ,(71,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,69,0,-1,'0',0,1)
 ,(72,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,69,0,-1,'0',0,1)
 ,(73,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,69,0,-1,'0',0,1)
 ,(74,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,4,69,0,-1,'0',0,1)
 ,(75,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,5,69,0,-1,'0',0,1)
 ,(76,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,6,69,0,-1,'0',0,1)
 ,(77,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,7,69,0,-1,'0',0,1)
 ,(78,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,8,69,0,-1,'0',0,1)
 ,(79,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,9,69,0,-1,'0',0,1)
 ,(80,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,51,0,-1,'0',0,1)
 ,(81,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,80,0,-1,'0',0,1)
 ,(82,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,80,0,-1,'0',0,1)
 ,(83,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,80,0,-1,'0',0,1)
 ,(84,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,51,0,-1,'0',0,1)
 ,(85,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,84,0,-1,'0',0,1)
 ,(86,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,84,0,-1,'0',0,1)
 ,(87,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,51,0,-1,'0',0,1)
 ,(88,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,87,0,-1,'0',0,1)
 ,(89,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,87,0,-1,'0',0,1)
 ,(90,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,7,51,0,-1,'0',0,1)
 ,(91,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,90,0,-1,'0',0,1)
 ,(92,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,90,0,-1,'0',0,1)
 ,(93,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,90,0,-1,'0',0,1)
 ,(94,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,90,0,-1,'0',0,1)
 ,(95,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,4,90,0,-1,'0',0,1)
 ,(96,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,51,0,-1,'0',0,1)
 ,(97,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,96,0,-1,'0',0,1)
 ,(98,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,96,0,-1,'0',0,1)
 ,(99,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,96,0,-1,'0',0,1)
 ,(100,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,32,0,-1,'0',0,1)
 ,(101,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(102,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(103,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(104,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,-1,'0',0,1)
 ,(105,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,-1,'0',0,1)
 ,(106,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(107,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,15,0,0,0,-1,'0',0,1)
 ,(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,4,0,0,0,-1,'0',0,1)
 ,(109,0,1,0,NULL,NULL,NULL,1,109,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(110,0,1,0,NULL,NULL,NULL,1,110,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(111,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,-1,'0',0,1)
 ,(112,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,111,0,-1,'0',0,1)
 ,(113,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,111,0,-1,'0',0,1)
 ,(114,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,111,0,-1,'0',0,1)
 ,(115,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,111,0,-1,'0',0,1)
 ,(116,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1)
 ,(117,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1)
 ,(118,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,-1,'0',0,1)
 ,(119,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,-1,'0',0,1)
 ,(120,1,0,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(125,1,0,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(122,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,108,0,-1,'0',0,1)
 ,(123,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,1,0,-1,'0',0,0)
 ,(124,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,108,0,-1,'0',0,1)
 ,(128,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,107,0,-1,'0',0,1)
 ,(126,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(127,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,6,4,1,0,-1,'0',0,0)
 ,(129,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,108,0,-1,'0',0,1)
 ,(130,0,NULL,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,108,0,-1,'0',0,1)
 ,(131,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,2,107,0,-1,'0',0,1)
 ,(132,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,4,107,0,-1,'0',0,1)
 ,(133,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,1,107,0,-1,'0',0,1)
 ,(134,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,3,107,0,-1,'0',0,1)
 ,(135,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,5,107,0,-1,'0',0,1)
 ,(136,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,127,0,-1,'0',0,0)
 ,(138,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,127,0,-1,'0',0,0)
 ,(137,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,127,0,-1,'0',0,0)
 ,(139,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,6,107,0,-1,'0',0,0)
 ,(140,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,8,107,0,-1,'0',0,1)
 ,(141,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,7,107,0,-1,'0',0,0)
 ,(142,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,11,107,0,-1,'0',0,1)
 ,(143,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,12,107,0,-1,'0',0,0)
 ,(144,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,9,107,0,-1,'0',0,0)
 ,(145,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,10,107,0,-1,'0',0,0)
 ,(146,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,13,107,0,-1,'0',0,0)
 ,(147,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,14,107,0,-1,'0',0,1)
 ,(148,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(149,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,127,0,-1,'0',0,0)
 ,(150,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,5,1,0,-1,'0',0,0)
 ,(151,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(152,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,150,0,-1,'0',0,0)
 ,(153,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(154,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,-1,'0',0,0)
 ,(155,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,127,0,-1,'0',0,0)
 ,(157,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(156,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,127,0,-1,'0',0,0)
 ,(158,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(159,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,7,1,0,-1,'0',0,0)
 ,(160,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,159,0,-1,'0',0,0)
 ,(161,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,159,0,-1,'0',0,0)
 ,(162,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,159,0,-1,'0',0,0)
 ,(163,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,159,0,-1,'0',0,0)
 ,(164,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,159,0,-1,'0',0,0)
 ,(165,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,150,0,-1,'0',0,0);

DROP TABLE IF EXISTS PermissionAccess;

CREATE TABLE IF NOT EXISTS `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`),
  KEY `paID_peID` (`paID`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccess VALUES(1,1)
 ,(2,1)
 ,(3,1)
 ,(4,1)
 ,(5,1)
 ,(6,1)
 ,(7,1)
 ,(8,1)
 ,(9,1)
 ,(10,1)
 ,(11,1)
 ,(12,1)
 ,(13,1)
 ,(14,1)
 ,(15,1)
 ,(16,1)
 ,(17,1)
 ,(18,1)
 ,(19,1)
 ,(20,1)
 ,(21,1)
 ,(22,1)
 ,(23,1)
 ,(24,1)
 ,(25,1)
 ,(26,1)
 ,(27,1)
 ,(28,1)
 ,(29,1)
 ,(30,1)
 ,(31,1)
 ,(32,1)
 ,(33,1)
 ,(34,1)
 ,(35,1)
 ,(36,1)
 ,(37,1)
 ,(38,1)
 ,(39,1)
 ,(40,1)
 ,(41,1)
 ,(42,1)
 ,(43,1)
 ,(44,1)
 ,(45,1)
 ,(46,1)
 ,(47,1)
 ,(48,1)
 ,(49,1)
 ,(50,1)
 ,(51,1)
 ,(52,1)
 ,(53,1)
 ,(54,1)
 ,(55,1)
 ,(56,1)
 ,(57,1)
 ,(58,1)
 ,(59,1);

DROP TABLE IF EXISTS PermissionAccessEntities;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntities VALUES(1,1)
 ,(2,1)
 ,(3,1)
 ,(4,5)
 ,(5,6);

DROP TABLE IF EXISTS PermissionAccessEntityGroupSets;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAccessEntityGroups;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntityGroups VALUES(1,1,3)
 ,(2,2,1)
 ,(3,3,2);

DROP TABLE IF EXISTS PermissionAccessEntityUsers;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAssignments;

CREATE TABLE IF NOT EXISTS `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO PermissionAssignments VALUES(1,16)
 ,(2,17)
 ,(3,54)
 ,(4,55)
 ,(5,56)
 ,(6,57)
 ,(7,59)
 ,(8,60)
 ,(9,61)
 ,(10,62)
 ,(11,63)
 ,(12,65)
 ,(13,66)
 ,(14,67)
 ,(15,68)
 ,(16,69)
 ,(17,70);

DROP TABLE IF EXISTS PermissionKeys;

CREATE TABLE IF NOT EXISTS `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

INSERT INTO PermissionKeys VALUES(1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0)
 ,(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0)
 ,(3,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0)
 ,(4,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0)
 ,(5,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0)
 ,(6,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0)
 ,(7,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0)
 ,(8,'edit_page_type','Change Page Type',0,0,'Ability to change just the page type for this page, also check out Theme permissions.',1,0)
 ,(9,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0)
 ,(10,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0)
 ,(11,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0)
 ,(12,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0)
 ,(13,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0)
 ,(14,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0)
 ,(15,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0)
 ,(16,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',9,0)
 ,(17,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',9,0)
 ,(18,'view_area','View Area',0,0,'Can view the area and its contents.',8,0)
 ,(19,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',8,0)
 ,(20,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',8,0)
 ,(21,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',8,0)
 ,(22,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',8,0)
 ,(23,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',8,0)
 ,(24,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',8,0)
 ,(25,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',8,0)
 ,(26,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',8,0)
 ,(27,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',10,0)
 ,(28,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',10,0)
 ,(29,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',10,0)
 ,(30,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',10,0)
 ,(31,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',10,0)
 ,(32,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',10,0)
 ,(33,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',10,0)
 ,(34,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',6,0)
 ,(35,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',6,0)
 ,(36,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0)
 ,(37,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',6,0)
 ,(38,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',6,0)
 ,(39,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',6,0)
 ,(40,'delete_file_set','Delete File Set',0,0,'',6,0)
 ,(41,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',6,0)
 ,(42,'add_file','Add File',0,1,'Can add files to set.',6,0)
 ,(43,'view_file','View Files',0,0,'Can view and download files.',7,0)
 ,(44,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',7,0)
 ,(45,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',7,0)
 ,(46,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',7,0)
 ,(47,'copy_file','Copy File',0,0,'Can copy file.',7,0)
 ,(48,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',7,0)
 ,(49,'delete_file','Delete File',0,0,'Can delete file.',7,0)
 ,(50,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0)
 ,(51,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0)
 ,(52,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0)
 ,(53,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0)
 ,(54,'access_user_search','Access User Search',0,1,'',5,0)
 ,(55,'edit_user_properties','Edit User Details',0,1,NULL,5,0)
 ,(56,'view_user_attributes','View User Attributes',0,1,NULL,5,0)
 ,(57,'activate_user','Activate/Deactivate User',0,0,NULL,5,0)
 ,(58,'sudo','Sign in as User',0,0,NULL,5,0)
 ,(59,'delete_user','Delete User',0,0,NULL,5,0)
 ,(60,'access_group_search','Access Group Search',0,0,'',5,0)
 ,(61,'edit_groups','Edit Groups',0,0,'',5,0)
 ,(62,'assign_user_groups','Assign Groups to User',0,1,'',5,0)
 ,(63,'backup','Perform Backups',0,0,NULL,11,0)
 ,(64,'access_task_permissions','Access Task Permissions',0,0,NULL,11,0)
 ,(65,'access_sitemap','Access Sitemap',0,0,NULL,12,0)
 ,(66,'access_page_defaults','Access Page Type Defaults',0,0,NULL,11,0)
 ,(67,'empty_trash','Empty Trash',0,0,NULL,11,0)
 ,(68,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0)
 ,(69,'install_packages','Install Packages',0,0,NULL,13,0)
 ,(70,'view_newsflow','View Newsflow',0,0,NULL,13,0);

DROP TABLE IF EXISTS SignupRequests;

CREATE TABLE IF NOT EXISTS `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Stacks;

CREATE TABLE IF NOT EXISTS `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO Stacks VALUES(1,'Menu',20,122)
 ,(2,'Bootstrap Header Nav',20,124)
 ,(3,'Ticker',20,129)
 ,(4,'footer',20,130);

DROP TABLE IF EXISTS UserBannedIPs;

CREATE TABLE IF NOT EXISTS `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserGroups;

CREATE TABLE IF NOT EXISTS `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserOpenIDs;

CREATE TABLE IF NOT EXISTS `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPrivateMessagesTo;

CREATE TABLE IF NOT EXISTS `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Users;

CREATE TABLE IF NOT EXISTS `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Users VALUES(1,'admin','kremel@gmail.com','90b92367d4fed4f28887fee92181a0fe','1',-1,1,'2012-11-29 14:17:28',0,1356102852,1356097944,2130706433,1356097528,35,NULL,NULL);

DROP TABLE IF EXISTS WorkflowProgress;

CREATE TABLE IF NOT EXISTS `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Workflows;

CREATE TABLE IF NOT EXISTS `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS areapermissionassignments;

CREATE TABLE IF NOT EXISTS `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS areapermissionblocktypeaccesslist;

CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS areapermissionblocktypeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atDefault;

CREATE TABLE IF NOT EXISTS `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO atDefault VALUES(1,'blog, blogging')
 ,(2,'icon-book')
 ,(3,'new blog, write blog, blogging')
 ,(4,'icon-pencil')
 ,(5,'blog drafts,composer')
 ,(6,'icon-book')
 ,(7,'pages, add page, delete page, copy, move, alias')
 ,(8,'pages, add page, delete page, copy, move, alias')
 ,(9,'icon-home')
 ,(10,'pages, add page, delete page, copy, move, alias, bulk')
 ,(11,'icon-road')
 ,(12,'find page, search page, search, find, pages, sitemap')
 ,(13,'icon-search')
 ,(14,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute')
 ,(15,'icon-picture')
 ,(16,'file, file attributes, title, attribute, description, rename')
 ,(17,'icon-cog')
 ,(18,'files, category, categories')
 ,(19,'icon-list-alt')
 ,(21,'new file set')
 ,(22,'icon-plus-sign')
 ,(23,'users, groups, people, find, delete user, remove user, change password, password')
 ,(24,'find, search, people, delete user, remove user, change password, password')
 ,(25,'icon-user')
 ,(26,'user, group, people, permissions, access, expire')
 ,(27,'icon-globe')
 ,(28,'user attributes, user data, gather data, registration data')
 ,(29,'icon-cog')
 ,(30,'new user, create')
 ,(32,'icon-plus-sign')
 ,(33,'new user group, new group, group, create')
 ,(35,'icon-plus')
 ,(36,'group set')
 ,(37,'icon-list')
 ,(38,'forms, log, error, email, mysql, exception, survey')
 ,(39,'hits, pageviews, visitors, activity')
 ,(40,'icon-signal')
 ,(41,'forms, questions, response, data')
 ,(42,'icon-briefcase')
 ,(43,'questions, quiz, response')
 ,(44,'icon-tasks')
 ,(45,'forms, log, error, email, mysql, exception, survey, history')
 ,(46,'icon-time')
 ,(47,'new theme, theme, active theme, change theme, template, css')
 ,(48,'icon-font')
 ,(49,'theme')
 ,(50,'page types')
 ,(51,'custom theme, change theme, custom css, css')
 ,(52,'page type defaults, global block, global area, starter, template')
 ,(53,'icon-file')
 ,(54,'page attributes, custom')
 ,(55,'icon-cog')
 ,(56,'single, page, custom, application')
 ,(57,'icon-wrench')
 ,(58,'add workflow, remove workflow')
 ,(59,'icon-list')
 ,(60,'icon-user')
 ,(61,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo')
 ,(62,'icon-th')
 ,(63,'icon-lock')
 ,(66,'block, refresh, custom')
 ,(67,'icon-wrench')
 ,(70,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks')
 ,(71,'update, upgrade')
 ,(72,'concrete5.org, my account, marketplace')
 ,(73,'buy theme, new theme, marketplace, template')
 ,(74,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace')
 ,(76,'website name, title')
 ,(77,'logo, favicon, iphone, icon, bookmark')
 ,(78,'tinymce, content block, fonts, editor, tinymce, content, overlay')
 ,(79,'translate, translation, internationalization, multilingual, translate')
 ,(80,'timezone, profile, locale')
 ,(81,'interface, quick nav, dashboard background, background image')
 ,(82,'vanity, pretty url, seo, pageview, view')
 ,(83,'bulk, seo, change keywords, engine, optimization, search')
 ,(84,'traffic, statistics, google analytics, quant, pageviews, hits')
 ,(85,'turn off statistics, tracking, statistics, pageviews, hits')
 ,(86,'configure search, site search, search option')
 ,(87,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching')
 ,(88,'cache option, turn off cache, no cache, page cache, caching')
 ,(89,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old')
 ,(90,'editors, hide site, offline, private, public, access')
 ,(91,'file options, file manager, upload, modify')
 ,(92,'security, files, media, extension, manager, upload')
 ,(93,'security, actions, administrator, admin, package, marketplace, search')
 ,(94,'security, lock ip, lock out, block ip, address, restrict, access')
 ,(95,'security, registration')
 ,(96,'antispam, block spam, security')
 ,(97,'lock site, under construction, hide, hidden')
 ,(98,'profile, login, redirect, specific, dashboard, administrators')
 ,(99,'member profile, member page,community, forums, social, avatar')
 ,(100,'signup, new user, community')
 ,(101,'smtp, mail settings')
 ,(102,'email server, mail settings, mail configuration, external, internal')
 ,(103,'email server, mail settings, mail configuration, private message, message system, import, email, message')
 ,(104,'attribute configuration')
 ,(105,'attributes, sets')
 ,(106,'attributes, types')
 ,(108,'overrides, system info, debug, support,help')
 ,(109,'errors,exceptions, develop, support, help')
 ,(110,'email, logging, logs, smtp, pop, errors, mysql, errors, log')
 ,(111,'security, alternate storage, hide files')
 ,(112,'network, proxy server')
 ,(113,'export, backup, database, sql, mysql, encryption, restore')
 ,(114,'upgrade, new version, update')
 ,(115,'export, database, xml, starting, points, schema, refresh, custom, tables')
 ,(244,'Just nu söker vi:')
 ,(245,'Till Karriär');

DROP TABLE IF EXISTS atNumber;

CREATE TABLE IF NOT EXISTS `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO atNumber VALUES(181,554.0000)
 ,(182,420.0000)
 ,(183,554.0000)
 ,(184,420.0000)
 ,(185,554.0000)
 ,(186,420.0000)
 ,(214,224.0000)
 ,(215,224.0000)
 ,(216,90.0000)
 ,(217,90.0000)
 ,(218,120.0000)
 ,(219,90.0000)
 ,(247,1024.0000)
 ,(248,1024.0000)
 ,(251,72.0000)
 ,(252,72.0000)
 ,(253,72.0000)
 ,(254,72.0000)
 ,(255,72.0000)
 ,(256,72.0000)
 ,(257,72.0000)
 ,(258,72.0000)
 ,(259,72.0000)
 ,(260,72.0000)
 ,(261,72.0000)
 ,(262,72.0000);

DROP TABLE IF EXISTS ataddress;

CREATE TABLE IF NOT EXISTS `ataddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ataddresscustomcountries;

CREATE TABLE IF NOT EXISTS `ataddresscustomcountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ataddresssettings;

CREATE TABLE IF NOT EXISTS `ataddresssettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atboolean;

CREATE TABLE IF NOT EXISTS `atboolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO atboolean VALUES(263,1)
 ,(264,0)
 ,(267,1)
 ,(268,0)
 ,(271,1)
 ,(272,1)
 ,(275,1)
 ,(276,1)
 ,(279,1);

DROP TABLE IF EXISTS atbooleansettings;

CREATE TABLE IF NOT EXISTS `atbooleansettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO atbooleansettings VALUES(5,0)
 ,(6,0)
 ,(8,0)
 ,(9,0)
 ,(10,1)
 ,(11,1)
 ,(25,0);

DROP TABLE IF EXISTS atdatetime;

CREATE TABLE IF NOT EXISTS `atdatetime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atdatetimesettings;

CREATE TABLE IF NOT EXISTS `atdatetimesettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atfile;

CREATE TABLE IF NOT EXISTS `atfile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO atfile VALUES(189,2)
 ,(192,0)
 ,(195,0)
 ,(198,2)
 ,(201,0)
 ,(204,0)
 ,(207,0)
 ,(210,0)
 ,(213,0)
 ,(250,7)
 ,(266,2)
 ,(270,0)
 ,(274,2)
 ,(278,1)
 ,(281,3);

DROP TABLE IF EXISTS atpageselector;

CREATE TABLE IF NOT EXISTS `atpageselector` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO atpageselector VALUES(225,123)
 ,(231,123)
 ,(237,123)
 ,(243,123);

DROP TABLE IF EXISTS atselectoptions;

CREATE TABLE IF NOT EXISTS `atselectoptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO atselectoptions VALUES(1,20,'Strategi',0,0)
 ,(2,20,'Krav',1,0)
 ,(3,20,'Ledning',2,0)
 ,(4,20,'UX/Webb',3,0)
 ,(5,20,'Arkitektur/Utveckling',4,0)
 ,(6,20,'QA/Test',5,0);

DROP TABLE IF EXISTS atselectoptionsselected;

CREATE TABLE IF NOT EXISTS `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO atselectoptionsselected VALUES(174,1)
 ,(174,2)
 ,(174,3)
 ,(174,4)
 ,(174,5)
 ,(174,6)
 ,(176,1)
 ,(176,2)
 ,(176,4)
 ,(178,5)
 ,(178,6)
 ,(180,1)
 ,(180,4)
 ,(188,1)
 ,(188,2)
 ,(188,4)
 ,(191,1)
 ,(191,6)
 ,(194,3)
 ,(194,4)
 ,(197,2)
 ,(197,3)
 ,(197,4)
 ,(200,4)
 ,(200,5)
 ,(209,1)
 ,(209,5)
 ,(224,1)
 ,(224,2)
 ,(224,3)
 ,(224,4)
 ,(224,5)
 ,(224,6)
 ,(230,1)
 ,(230,2)
 ,(230,3)
 ,(230,4)
 ,(230,5)
 ,(230,6)
 ,(236,1)
 ,(236,2)
 ,(236,3)
 ,(236,4)
 ,(236,5)
 ,(236,6)
 ,(242,1)
 ,(242,2)
 ,(242,3)
 ,(242,4)
 ,(242,5)
 ,(242,6)
 ,(246,1)
 ,(246,2)
 ,(246,3)
 ,(246,4)
 ,(246,5)
 ,(246,6)
 ,(249,4)
 ,(265,1)
 ,(265,2)
 ,(265,4)
 ,(269,1)
 ,(269,4)
 ,(273,2)
 ,(273,3)
 ,(273,6)
 ,(277,1)
 ,(277,4)
 ,(277,6)
 ,(280,2)
 ,(280,5);

DROP TABLE IF EXISTS atselectsettings;

CREATE TABLE IF NOT EXISTS `atselectsettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO atselectsettings VALUES(20,1,'display_asc',0);

DROP TABLE IF EXISTS attextareasettings;

CREATE TABLE IF NOT EXISTS `attextareasettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO attextareasettings VALUES(2,'')
 ,(3,'')
 ,(4,'')
 ,(7,'');

DROP TABLE IF EXISTS attributekeycategories;

CREATE TABLE IF NOT EXISTS `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO attributekeycategories VALUES(1,'collection',1,NULL)
 ,(2,'user',1,NULL)
 ,(3,'file',1,NULL);

DROP TABLE IF EXISTS attributesetkeys;

CREATE TABLE IF NOT EXISTS `attributesetkeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO attributesetkeys VALUES(1,1,1)
 ,(2,1,2)
 ,(3,1,3)
 ,(7,1,4)
 ,(5,2,1)
 ,(6,2,2)
 ,(8,2,3)
 ,(9,2,4)
 ,(24,5,2)
 ,(23,5,1)
 ,(21,4,1);

DROP TABLE IF EXISTS attributesets;

CREATE TABLE IF NOT EXISTS `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO attributesets VALUES(1,'Page Header','page_header',1,0,0,3)
 ,(2,'Navigation and Indexing','navigation',1,0,0,2)
 ,(5,'BubbleLink','BubbleLink',1,0,0,4)
 ,(4,'General Attributtes','GeneralAttributtes',1,0,0,0);

DROP TABLE IF EXISTS attributetypecategories;

CREATE TABLE IF NOT EXISTS `attributetypecategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO attributetypecategories VALUES(1,1)
 ,(1,2)
 ,(1,3)
 ,(2,1)
 ,(2,2)
 ,(2,3)
 ,(3,1)
 ,(3,2)
 ,(3,3)
 ,(4,1)
 ,(4,2)
 ,(4,3)
 ,(5,1)
 ,(6,1)
 ,(6,2)
 ,(6,3)
 ,(7,1)
 ,(7,3)
 ,(8,1)
 ,(8,2)
 ,(8,3)
 ,(9,2)
 ,(10,1);

DROP TABLE IF EXISTS attributetypes;

CREATE TABLE IF NOT EXISTS `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO attributetypes VALUES(1,'text','Text',0)
 ,(2,'textarea','Text Area',0)
 ,(3,'boolean','Checkbox',0)
 ,(4,'date_time','Date/Time',0)
 ,(5,'image_file','Image/File',0)
 ,(6,'number','Number',0)
 ,(7,'rating','Rating',0)
 ,(8,'select','Select',0)
 ,(9,'address','Address',0)
 ,(10,'page_selector','Page Selector',1);

DROP TABLE IF EXISTS attributevalues;

CREATE TABLE IF NOT EXISTS `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8;

INSERT INTO attributevalues VALUES(1,3,'2012-11-29 14:17:37',1,2)
 ,(2,4,'2012-11-29 14:17:37',1,2)
 ,(3,3,'2012-11-29 14:17:37',1,2)
 ,(4,4,'2012-11-29 14:17:37',1,2)
 ,(5,3,'2012-11-29 14:17:37',1,2)
 ,(6,4,'2012-11-29 14:17:37',1,2)
 ,(7,3,'2012-11-29 14:17:38',1,2)
 ,(8,3,'2012-11-29 14:17:38',1,2)
 ,(9,4,'2012-11-29 14:17:38',1,2)
 ,(10,3,'2012-11-29 14:17:38',1,2)
 ,(11,4,'2012-11-29 14:17:38',1,2)
 ,(12,3,'2012-11-29 14:17:38',1,2)
 ,(13,4,'2012-11-29 14:17:38',1,2)
 ,(14,3,'2012-11-29 14:17:38',1,2)
 ,(15,4,'2012-11-29 14:17:38',1,2)
 ,(16,3,'2012-11-29 14:17:38',1,2)
 ,(17,4,'2012-11-29 14:17:38',1,2)
 ,(18,3,'2012-11-29 14:17:38',1,2)
 ,(19,4,'2012-11-29 14:17:38',1,2)
 ,(20,5,'2012-11-29 14:17:38',1,3)
 ,(21,3,'2012-11-29 14:17:38',1,2)
 ,(22,4,'2012-11-29 14:17:38',1,2)
 ,(23,3,'2012-11-29 14:17:38',1,2)
 ,(24,3,'2012-11-29 14:17:38',1,2)
 ,(25,4,'2012-11-29 14:17:38',1,2)
 ,(26,3,'2012-11-29 14:17:38',1,2)
 ,(27,4,'2012-11-29 14:17:38',1,2)
 ,(28,3,'2012-11-29 14:17:38',1,2)
 ,(29,4,'2012-11-29 14:17:38',1,2)
 ,(30,3,'2012-11-29 14:17:38',1,2)
 ,(31,5,'2012-11-29 14:17:38',1,3)
 ,(32,4,'2012-11-29 14:17:38',1,2)
 ,(33,3,'2012-11-29 14:17:38',1,2)
 ,(34,5,'2012-11-29 14:17:38',1,3)
 ,(35,4,'2012-11-29 14:17:38',1,2)
 ,(36,3,'2012-11-29 14:17:38',1,2)
 ,(37,4,'2012-11-29 14:17:38',1,2)
 ,(38,3,'2012-11-29 14:17:38',1,2)
 ,(39,3,'2012-11-29 14:17:38',1,2)
 ,(40,4,'2012-11-29 14:17:38',1,2)
 ,(41,3,'2012-11-29 14:17:38',1,2)
 ,(42,4,'2012-11-29 14:17:38',1,2)
 ,(43,3,'2012-11-29 14:17:38',1,2)
 ,(44,4,'2012-11-29 14:17:38',1,2)
 ,(45,3,'2012-11-29 14:17:38',1,2)
 ,(46,4,'2012-11-29 14:17:38',1,2)
 ,(47,3,'2012-11-29 14:17:38',1,2)
 ,(48,4,'2012-11-29 14:17:38',1,2)
 ,(49,3,'2012-11-29 14:17:38',1,2)
 ,(50,3,'2012-11-29 14:17:38',1,2)
 ,(51,3,'2012-11-29 14:17:38',1,2)
 ,(52,3,'2012-11-29 14:17:38',1,2)
 ,(53,4,'2012-11-29 14:17:38',1,2)
 ,(54,3,'2012-11-29 14:17:38',1,2)
 ,(55,4,'2012-11-29 14:17:38',1,2)
 ,(56,3,'2012-11-29 14:17:38',1,2)
 ,(57,4,'2012-11-29 14:17:38',1,2)
 ,(58,3,'2012-11-29 14:17:38',1,2)
 ,(59,4,'2012-11-29 14:17:39',1,2)
 ,(60,4,'2012-11-29 14:17:39',1,2)
 ,(61,3,'2012-11-29 14:17:39',1,2)
 ,(62,4,'2012-11-29 14:17:39',1,2)
 ,(63,4,'2012-11-29 14:17:39',1,2)
 ,(64,5,'2012-11-29 14:17:39',1,3)
 ,(65,8,'2012-11-29 14:17:39',1,3)
 ,(66,3,'2012-11-29 14:17:39',1,2)
 ,(67,4,'2012-11-29 14:17:39',1,2)
 ,(68,5,'2012-11-29 14:17:39',1,3)
 ,(69,5,'2012-11-29 14:17:39',1,3)
 ,(70,3,'2012-11-29 14:17:39',1,2)
 ,(71,3,'2012-11-29 14:17:39',1,2)
 ,(72,3,'2012-11-29 14:17:39',1,2)
 ,(73,3,'2012-11-29 14:17:39',1,2)
 ,(74,3,'2012-11-29 14:17:39',1,2)
 ,(75,5,'2012-11-29 14:17:39',1,3)
 ,(76,3,'2012-11-29 14:17:39',1,2)
 ,(77,3,'2012-11-29 14:17:39',1,2)
 ,(78,3,'2012-11-29 14:17:39',1,2)
 ,(79,3,'2012-11-29 14:17:39',1,2)
 ,(80,3,'2012-11-29 14:17:39',1,2)
 ,(81,3,'2012-11-29 14:17:39',1,2)
 ,(82,3,'2012-11-29 14:17:39',1,2)
 ,(83,3,'2012-11-29 14:17:39',1,2)
 ,(84,3,'2012-11-29 14:17:39',1,2)
 ,(85,3,'2012-11-29 14:17:39',1,2)
 ,(86,3,'2012-11-29 14:17:39',1,2)
 ,(87,3,'2012-11-29 14:17:39',1,2)
 ,(88,3,'2012-11-29 14:17:39',1,2)
 ,(89,3,'2012-11-29 14:17:39',1,2)
 ,(90,3,'2012-11-29 14:17:39',1,2)
 ,(91,3,'2012-11-29 14:17:39',1,2)
 ,(92,3,'2012-11-29 14:17:39',1,2)
 ,(93,3,'2012-11-29 14:17:39',1,2)
 ,(94,3,'2012-11-29 14:17:39',1,2)
 ,(95,3,'2012-11-29 14:17:39',1,2)
 ,(96,3,'2012-11-29 14:17:39',1,2)
 ,(97,3,'2012-11-29 14:17:39',1,2)
 ,(98,3,'2012-11-29 14:17:39',1,2)
 ,(99,3,'2012-11-29 14:17:39',1,2)
 ,(100,3,'2012-11-29 14:17:39',1,2)
 ,(101,3,'2012-11-29 14:17:39',1,2)
 ,(102,3,'2012-11-29 14:17:39',1,2)
 ,(103,3,'2012-11-29 14:17:39',1,2)
 ,(104,3,'2012-11-29 14:17:39',1,2)
 ,(105,3,'2012-11-29 14:17:39',1,2)
 ,(106,3,'2012-11-29 14:17:39',1,2)
 ,(107,8,'2012-11-29 14:17:40',1,3)
 ,(108,3,'2012-11-29 14:17:40',1,2)
 ,(109,3,'2012-11-29 14:17:40',1,2)
 ,(110,3,'2012-11-29 14:17:40',1,2)
 ,(111,3,'2012-11-29 14:17:40',1,2)
 ,(112,3,'2012-11-29 14:17:40',1,2)
 ,(113,3,'2012-11-29 14:17:40',1,2)
 ,(114,3,'2012-11-29 14:17:40',1,2)
 ,(115,3,'2012-11-29 14:17:40',1,2)
 ,(116,5,'2012-11-29 14:17:40',1,3)
 ,(117,5,'2012-11-29 14:17:40',1,3)
 ,(118,8,'2012-11-29 14:17:40',1,3)
 ,(119,5,'2012-11-30 12:48:01',1,3)
 ,(120,5,'2012-11-30 13:46:48',1,3)
 ,(121,6,'2012-11-30 13:46:48',1,3)
 ,(215,13,'2012-12-13 17:24:04',1,6)
 ,(208,5,'2012-12-13 13:14:11',1,3)
 ,(201,21,'2012-12-13 12:31:58',1,5)
 ,(194,20,'2012-12-13 12:24:00',1,8)
 ,(187,5,'2012-12-13 12:02:06',1,3)
 ,(180,20,'2012-12-10 10:00:28',1,8)
 ,(128,5,'2012-12-04 08:58:34',1,3)
 ,(129,6,'2012-12-04 08:58:34',1,3)
 ,(214,12,'2012-12-13 17:24:04',1,6)
 ,(207,21,'2012-12-13 13:13:39',1,5)
 ,(200,20,'2012-12-13 12:31:58',1,8)
 ,(193,5,'2012-12-13 12:24:00',1,3)
 ,(186,13,'2012-12-11 14:20:40',1,6)
 ,(179,5,'2012-12-10 10:00:28',1,3)
 ,(136,5,'2012-12-04 08:59:07',1,3)
 ,(137,6,'2012-12-04 08:59:07',1,3)
 ,(213,21,'2012-12-13 13:18:35',1,5)
 ,(206,20,'2012-12-13 13:13:39',1,8)
 ,(199,5,'2012-12-13 12:31:58',1,3)
 ,(192,21,'2012-12-13 12:22:17',1,5)
 ,(185,12,'2012-12-11 14:20:40',1,6)
 ,(178,20,'2012-12-10 10:00:18',1,8)
 ,(144,5,'2012-12-04 08:59:27',1,3)
 ,(145,6,'2012-12-04 08:59:27',1,3)
 ,(212,20,'2012-12-13 13:18:35',1,8)
 ,(205,5,'2012-12-13 13:13:39',1,3)
 ,(198,21,'2012-12-13 12:31:30',1,5)
 ,(191,20,'2012-12-13 12:22:17',1,8)
 ,(184,13,'2012-12-11 14:20:39',1,6)
 ,(177,5,'2012-12-10 10:00:18',1,3)
 ,(152,5,'2012-12-04 09:02:45',1,3)
 ,(153,5,'2012-12-04 09:12:02',1,3)
 ,(211,5,'2012-12-13 13:18:35',1,3)
 ,(204,21,'2012-12-13 13:11:56',1,5)
 ,(197,20,'2012-12-13 12:31:30',1,8)
 ,(190,5,'2012-12-13 12:22:17',1,3)
 ,(183,12,'2012-12-11 14:20:39',1,6)
 ,(176,20,'2012-12-10 10:00:11',1,8)
 ,(160,5,'2012-12-04 09:14:07',1,3)
 ,(210,21,'2012-12-13 13:14:11',1,5)
 ,(203,20,'2012-12-13 13:11:56',1,8)
 ,(196,5,'2012-12-13 12:31:30',1,3)
 ,(189,21,'2012-12-13 12:02:06',1,5)
 ,(182,13,'2012-12-11 14:20:38',1,6)
 ,(175,5,'2012-12-10 10:00:11',1,3)
 ,(167,5,'2012-12-04 09:14:38',1,3)
 ,(209,20,'2012-12-13 13:14:11',1,8)
 ,(202,5,'2012-12-13 13:11:56',1,3)
 ,(195,21,'2012-12-13 12:24:00',1,5)
 ,(188,20,'2012-12-13 12:02:06',1,8)
 ,(181,12,'2012-12-11 14:20:38',1,6)
 ,(174,20,'2012-12-10 09:34:39',1,8)
 ,(216,12,'2012-12-13 17:25:55',1,6)
 ,(217,13,'2012-12-13 17:25:55',1,6)
 ,(218,12,'2012-12-13 17:27:54',1,6)
 ,(219,13,'2012-12-13 17:27:54',1,6)
 ,(220,5,'2012-12-13 17:30:47',1,3)
 ,(221,6,'2012-12-13 17:30:47',1,3)
 ,(222,8,'2012-12-13 17:30:47',1,3)
 ,(223,9,'2012-12-13 17:30:47',1,3)
 ,(224,20,'2012-12-13 17:30:47',1,8)
 ,(225,22,'2012-12-13 17:30:47',1,10)
 ,(226,5,'2012-12-13 17:58:42',1,3)
 ,(227,6,'2012-12-13 17:58:42',1,3)
 ,(228,8,'2012-12-13 17:58:42',1,3)
 ,(229,9,'2012-12-13 17:58:42',1,3)
 ,(230,20,'2012-12-13 17:58:42',1,8)
 ,(231,22,'2012-12-13 17:58:42',1,10)
 ,(232,5,'2012-12-13 17:59:28',1,3)
 ,(233,6,'2012-12-13 17:59:28',1,3)
 ,(234,8,'2012-12-13 17:59:28',1,3)
 ,(235,9,'2012-12-13 17:59:28',1,3)
 ,(236,20,'2012-12-13 17:59:28',1,8)
 ,(237,22,'2012-12-13 17:59:28',1,10)
 ,(238,5,'2012-12-14 12:45:53',1,3)
 ,(239,6,'2012-12-14 12:45:53',1,3)
 ,(240,8,'2012-12-14 12:45:53',1,3)
 ,(241,9,'2012-12-14 12:45:53',1,3)
 ,(242,20,'2012-12-14 12:45:53',1,8)
 ,(243,22,'2012-12-14 12:45:53',1,10)
 ,(244,23,'2012-12-14 12:45:53',1,1)
 ,(245,24,'2012-12-14 12:45:53',1,1)
 ,(246,20,'2012-12-17 14:10:56',1,8)
 ,(247,12,'2012-12-17 14:21:48',1,6)
 ,(248,13,'2012-12-17 14:21:48',1,6)
 ,(249,20,'2012-12-17 14:22:03',1,8)
 ,(250,21,'2012-12-17 14:22:03',1,5)
 ,(251,12,'2012-12-18 09:32:20',1,6)
 ,(252,13,'2012-12-18 09:32:20',1,6)
 ,(253,12,'2012-12-18 09:32:21',1,6)
 ,(254,13,'2012-12-18 09:32:21',1,6)
 ,(255,12,'2012-12-18 09:32:21',1,6)
 ,(256,13,'2012-12-18 09:32:21',1,6)
 ,(257,12,'2012-12-18 09:32:22',1,6)
 ,(258,13,'2012-12-18 09:32:22',1,6)
 ,(259,12,'2012-12-18 09:32:23',1,6)
 ,(260,13,'2012-12-18 09:32:23',1,6)
 ,(261,12,'2012-12-18 09:32:24',1,6)
 ,(262,13,'2012-12-18 09:32:24',1,6)
 ,(263,5,'2012-12-19 12:58:27',1,3)
 ,(264,5,'2012-12-19 13:48:27',1,3)
 ,(265,20,'2012-12-19 13:48:27',1,8)
 ,(266,21,'2012-12-19 13:48:27',1,5)
 ,(267,25,'2012-12-19 13:48:27',1,3)
 ,(268,5,'2012-12-19 13:48:55',1,3)
 ,(269,20,'2012-12-19 13:48:55',1,8)
 ,(270,21,'2012-12-19 13:48:55',1,5)
 ,(271,25,'2012-12-19 13:48:55',1,3)
 ,(272,5,'2012-12-19 14:45:36',1,3)
 ,(273,20,'2012-12-19 14:45:36',1,8)
 ,(274,21,'2012-12-19 14:45:36',1,5)
 ,(275,25,'2012-12-19 14:45:36',1,3)
 ,(276,5,'2012-12-19 14:47:05',1,3)
 ,(277,20,'2012-12-19 14:47:05',1,8)
 ,(278,21,'2012-12-19 14:47:05',1,5)
 ,(279,25,'2012-12-19 14:47:05',1,3)
 ,(280,20,'2012-12-21 13:53:05',1,8)
 ,(281,21,'2012-12-21 13:53:05',1,5);

DROP TABLE IF EXISTS basicworkflowpermissionassignments;

CREATE TABLE IF NOT EXISTS `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS basicworkflowprogressdata;

CREATE TABLE IF NOT EXISTS `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS blockpermissionassignments;

CREATE TABLE IF NOT EXISTS `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS blockrelations;

CREATE TABLE IF NOT EXISTS `blockrelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO blockrelations VALUES(1,16,15,'DUPLICATE')
 ,(2,26,20,'DUPLICATE')
 ,(3,56,54,'DUPLICATE')
 ,(4,57,56,'DUPLICATE')
 ,(5,58,51,'DUPLICATE')
 ,(6,59,52,'DUPLICATE')
 ,(7,60,50,'DUPLICATE')
 ,(8,61,53,'DUPLICATE')
 ,(9,62,55,'DUPLICATE')
 ,(10,65,64,'DUPLICATE')
 ,(11,66,65,'DUPLICATE')
 ,(12,67,66,'DUPLICATE')
 ,(13,69,68,'DUPLICATE')
 ,(14,71,28,'DUPLICATE');

DROP TABLE IF EXISTS blocks;

CREATE TABLE IF NOT EXISTS `blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

INSERT INTO blocks VALUES(1,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',9,1)
 ,(2,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',9,1)
 ,(3,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',9,1)
 ,(4,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',9,1)
 ,(5,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',9,1)
 ,(6,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',6,1)
 ,(7,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',7,1)
 ,(8,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',5,1)
 ,(9,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',5,1)
 ,(10,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',4,1)
 ,(11,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',3,1)
 ,(12,'','2012-11-29 14:17:40','2012-11-29 14:17:40',NULL,'1',5,1)
 ,(13,NULL,'2012-12-03 12:55:15','2012-12-03 12:55:15',NULL,'1',9,1)
 ,(14,NULL,'2012-12-03 13:00:47','2012-12-03 13:00:47',NULL,'1',15,1)
 ,(15,NULL,'2012-12-03 14:54:11','2012-12-03 14:54:11',NULL,'1',9,1)
 ,(16,NULL,'2012-12-03 15:31:36','2012-12-03 15:31:36',NULL,'1',9,1)
 ,(17,NULL,'2012-12-04 09:10:19','2012-12-04 09:10:19',NULL,'1',9,1)
 ,(18,NULL,'2012-12-04 09:10:56','2012-12-04 09:11:10',NULL,'1',9,1)
 ,(19,NULL,'2012-12-04 09:12:48','2012-12-04 09:12:48',NULL,'1',9,1)
 ,(20,NULL,'2012-12-04 09:13:04','2012-12-04 09:13:04',NULL,'1',9,1)
 ,(21,NULL,'2012-12-04 09:13:30','2012-12-04 09:13:30',NULL,'1',9,1)
 ,(22,NULL,'2012-12-04 09:13:40','2012-12-04 09:13:40',NULL,'1',9,1)
 ,(23,NULL,'2012-12-11 14:21:38','2012-12-11 14:21:38',NULL,'1',18,1)
 ,(24,NULL,'2012-12-11 14:21:52','2012-12-11 14:21:52',NULL,'1',18,1)
 ,(25,NULL,'2012-12-11 14:22:11','2012-12-11 14:22:11',NULL,'1',18,1)
 ,(26,NULL,'2012-12-13 13:21:13','2012-12-13 13:21:13',NULL,'1',9,1)
 ,(27,NULL,'2012-12-14 12:39:51','2012-12-14 12:39:51',NULL,'1',9,1)
 ,(28,NULL,'2012-12-17 13:43:16','2012-12-17 13:43:16',NULL,'1',9,1)
 ,(29,NULL,'2012-12-17 14:24:20','2012-12-17 14:24:20',NULL,'1',9,1)
 ,(42,NULL,'2012-12-18 13:05:42','2012-12-18 13:05:42',NULL,'1',35,1)
 ,(50,NULL,'2012-12-18 13:46:22','2012-12-18 13:46:22',NULL,'1',42,1)
 ,(46,NULL,'2012-12-18 13:27:58','2012-12-18 13:27:58',NULL,'1',38,1)
 ,(51,NULL,'2012-12-18 13:46:43','2012-12-18 13:46:43',NULL,'1',42,1)
 ,(52,NULL,'2012-12-18 13:47:15','2012-12-18 13:47:15',NULL,'1',42,1)
 ,(53,NULL,'2012-12-18 13:47:32','2012-12-18 13:47:32',NULL,'1',42,1)
 ,(54,NULL,'2012-12-18 13:48:04','2012-12-18 13:48:04',NULL,'1',42,1)
 ,(55,NULL,'2012-12-18 13:48:24','2012-12-18 13:48:24',NULL,'1',42,1)
 ,(56,NULL,'2012-12-18 13:59:41','2012-12-18 13:59:41',NULL,'1',42,1)
 ,(57,NULL,'2012-12-18 13:59:54','2012-12-18 14:06:24',NULL,'1',42,1)
 ,(58,NULL,'2012-12-18 14:06:28','2012-12-18 14:06:28',NULL,'1',42,1)
 ,(59,NULL,'2012-12-18 14:06:32','2012-12-18 14:06:32',NULL,'1',42,1)
 ,(60,NULL,'2012-12-18 14:06:37','2012-12-18 14:06:37',NULL,'1',42,1)
 ,(61,NULL,'2012-12-18 14:06:41','2012-12-18 14:06:41',NULL,'1',42,1)
 ,(62,NULL,'2012-12-18 14:06:46','2012-12-18 14:06:46',NULL,'1',42,1)
 ,(63,NULL,'2012-12-18 14:23:01','2012-12-18 14:23:01',NULL,'1',9,1)
 ,(64,NULL,'2012-12-19 13:31:45','2012-12-19 13:31:45',NULL,'1',9,1)
 ,(65,NULL,'2012-12-19 14:51:55','2012-12-19 14:52:04',NULL,'1',9,1)
 ,(66,NULL,'2012-12-19 15:02:02','2012-12-19 15:02:02',NULL,'1',9,1)
 ,(67,NULL,'2012-12-19 15:09:41','2012-12-19 15:09:41',NULL,'1',9,1)
 ,(68,NULL,'2012-12-19 15:16:52','2012-12-19 15:16:52',NULL,'1',9,1)
 ,(69,NULL,'2012-12-19 15:17:12','2012-12-19 15:17:12',NULL,'1',9,1)
 ,(70,NULL,'2012-12-20 15:22:42','2012-12-20 15:22:42',NULL,'1',9,1)
 ,(71,NULL,'2012-12-21 13:48:09','2012-12-21 13:48:46',NULL,'1',9,1)
 ,(72,NULL,'2012-12-21 13:53:19','2012-12-21 13:53:19',NULL,'1',9,1)
 ,(73,NULL,'2012-12-21 13:53:33','2012-12-21 13:53:33',NULL,'1',9,1);

DROP TABLE IF EXISTS blocktypepermissionblocktypeaccesslist;

CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS blocktypepermissionblocktypeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btCompetence;

CREATE TABLE IF NOT EXISTS `btCompetence` (
  `bID` int(10) unsigned NOT NULL,
  `imageID` int(10) unsigned DEFAULT '0',
  `Heading` text,
  `Text` text,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO btCompetence VALUES(50,13,'Arkitektur/Utveckling',NULL)
 ,(51,11,'Ledning',NULL)
 ,(52,12,'Krav',NULL)
 ,(53,8,'UX/Webb',NULL)
 ,(54,9,'Strategi',NULL)
 ,(55,10,'QA/Test',NULL)
 ,(56,9,'Strategi',NULL)
 ,(57,9,'Strategi','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
 ,(58,11,'Ledning','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
 ,(59,12,'Krav','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
 ,(60,13,'Arkitektur/Utveckling','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
 ,(61,8,'UX/Webb','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
 ,(62,10,'QA/Test','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

DROP TABLE IF EXISTS btContentFile;

CREATE TABLE IF NOT EXISTS `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btContentImage;

CREATE TABLE IF NOT EXISTS `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO btContentImage VALUES(23,1,0,0,0,'www.seb.se',0,0,'www.seb.se')
 ,(24,2,0,0,0,'',0,0,'')
 ,(25,3,0,0,0,'',0,0,'');

DROP TABLE IF EXISTS btContentLocal;

CREATE TABLE IF NOT EXISTS `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO btContentLocal VALUES(1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						')
 ,(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>')
 ,(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>')
 ,(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>')
 ,(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>')
 ,(13,'<p>Just nu söker vi: Systemutvecklare, Interaktionsdesigners &amp; ScrumMaster</p>')
 ,(15,'<p>Vi är ett konsultbolag med ett <strong>stort hjärta</strong> som brinner för att skapa lösningar som både <strong>människa</strong>, <strong>maskin</strong> och <strong>affär</strong> älskar. Vad kan vi hjälpa dig med?</p>')
 ,(16,'<p>Vi är ett konsultbolag med ett <strong>stort hjärta</strong> som brinner för att skapa lösningar som både <strong>människa</strong>, <strong>maskin</strong> och <strong>affär</strong> älskar. Vad kan vi hjälpa dig med?</p>')
 ,(17,'<p>Så gjorde vi det enklare för Sveriges småföretagare</p>')
 ,(18,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
 ,(19,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
 ,(20,'<p>Så gjorde vi det enklare för Sveriges småföretagare</p>')
 ,(21,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
 ,(22,'<p>SEBSEBSEBSEB</p>\r\n<p> </p>')
 ,(26,'<h1>Så gjorde vi det enklare för Sveriges småföretagare</h1>')
 ,(27,'<p>Just nu söker vi:</p>\r\n<p><strong>Scrum-Master</strong></p>')
 ,(28,'<h1>Våra Project</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
 ,(29,'<p>asdasdasdasdasd</p>')
 ,(63,'<h1>Kompetenser</h1>\r\n<p>Hos Beamon hittar du konsulter som är experter inom ledning, arkitektur, analys user experience, utveckling och kvalitet. Hos oss hittar du IT-branschens stjärnor, där värderingar som öppenhet, enkelhet, professionalism och resultat speglar vår vardag.</p>')
 ,(64,'<p>hiihihih</p>\r\n<p> </p>')
 ,(65,'<h2>Våra Projekt</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p> </p>')
 ,(66,'<h2>Våra Projekt</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p><a title=\"Projekt\" href=\"{CCM:CID_127}\">Våra Projekt</a></p>')
 ,(67,'<h2>Våra Projekt</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p><a class=\"green\" title=\"Projekt\" href=\"{CCM:CID_127}\">Våra Projekt</a></p>')
 ,(68,'<h2>Våra medarbetare</h2>\r\n<p><a class=\"green\" title=\"Medarbetare\" href=\"{CCM:CID_150}\">Se alla medarbetare</a></p>')
 ,(69,'<h2 style=\"text-align: center;\">Våra medarbetare</h2>\r\n<p style=\"text-align: center;\"><a class=\"green\" title=\"Medarbetare\" href=\"{CCM:CID_150}\">Se alla medarbetare</a></p>')
 ,(70,'<p>hej</p>')
 ,(71,'<h1>Våra Project</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
 ,(72,'<p>Blaha blaha</p>\r\n<p> </p>')
 ,(73,'<p>fvbvcbcvbcvbdfgdfgdfgd</p>');

DROP TABLE IF EXISTS btCoreScrapbookDisplay;

CREATE TABLE IF NOT EXISTS `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btCoreStackDisplay;

CREATE TABLE IF NOT EXISTS `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btDashboardNewsflowLatest;

CREATE TABLE IF NOT EXISTS `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO btDashboardNewsflowLatest VALUES(8,'A')
 ,(9,'B')
 ,(12,'C');

DROP TABLE IF EXISTS btDateNav;

CREATE TABLE IF NOT EXISTS `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btExternalForm;

CREATE TABLE IF NOT EXISTS `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFlashContent;

CREATE TABLE IF NOT EXISTS `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btForm;

CREATE TABLE IF NOT EXISTS `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormAnswerSet;

CREATE TABLE IF NOT EXISTS `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormAnswers;

CREATE TABLE IF NOT EXISTS `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormQuestions;

CREATE TABLE IF NOT EXISTS `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btGoogleMap;

CREATE TABLE IF NOT EXISTS `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO btGoogleMap VALUES(14,'','Maria Torget 1A Stockholm',59.3187082,18.0633863,14);

DROP TABLE IF EXISTS btGuestBook;

CREATE TABLE IF NOT EXISTS `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btGuestBookEntries;

CREATE TABLE IF NOT EXISTS `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btNavigation;

CREATE TABLE IF NOT EXISTS `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btNextPrevious;

CREATE TABLE IF NOT EXISTS `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btPageList;

CREATE TABLE IF NOT EXISTS `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btRssDisplay;

CREATE TABLE IF NOT EXISTS `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSearch;

CREATE TABLE IF NOT EXISTS `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSlideshow;

CREATE TABLE IF NOT EXISTS `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSlideshowImg;

CREATE TABLE IF NOT EXISTS `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSurvey;

CREATE TABLE IF NOT EXISTS `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSurveyOptions;

CREATE TABLE IF NOT EXISTS `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSurveyResults;

CREATE TABLE IF NOT EXISTS `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btTags;

CREATE TABLE IF NOT EXISTS `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btVideo;

CREATE TABLE IF NOT EXISTS `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btYouTube;

CREATE TABLE IF NOT EXISTS `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS collectionattributevalues;

CREATE TABLE IF NOT EXISTS `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO collectionattributevalues VALUES(1,8,5,263)
 ,(1,9,5,263)
 ,(1,10,5,263)
 ,(1,11,5,263)
 ,(1,12,5,263)
 ,(1,13,5,263)
 ,(1,14,5,263)
 ,(3,1,3,1)
 ,(3,1,4,2)
 ,(4,1,3,3)
 ,(4,1,4,4)
 ,(5,1,3,5)
 ,(5,1,4,6)
 ,(6,1,3,7)
 ,(7,1,3,8)
 ,(7,1,4,9)
 ,(8,1,3,10)
 ,(8,1,4,11)
 ,(9,1,3,12)
 ,(9,1,4,13)
 ,(11,1,3,14)
 ,(11,1,4,15)
 ,(12,1,3,16)
 ,(12,1,4,17)
 ,(13,1,3,18)
 ,(13,1,4,19)
 ,(14,1,3,21)
 ,(14,1,4,22)
 ,(14,1,5,20)
 ,(15,1,3,23)
 ,(16,1,3,24)
 ,(16,1,4,25)
 ,(17,1,3,26)
 ,(17,1,4,27)
 ,(18,1,3,28)
 ,(18,1,4,29)
 ,(19,1,3,30)
 ,(19,1,4,32)
 ,(19,1,5,31)
 ,(20,1,3,33)
 ,(20,1,4,35)
 ,(20,1,5,34)
 ,(21,1,3,36)
 ,(21,1,4,37)
 ,(22,1,3,38)
 ,(23,1,3,39)
 ,(23,1,4,40)
 ,(24,1,3,41)
 ,(24,1,4,42)
 ,(25,1,3,43)
 ,(25,1,4,44)
 ,(26,1,3,45)
 ,(26,1,4,46)
 ,(28,1,3,47)
 ,(28,1,4,48)
 ,(29,1,3,49)
 ,(30,1,3,50)
 ,(31,1,3,51)
 ,(32,1,3,52)
 ,(32,1,4,53)
 ,(34,1,3,54)
 ,(34,1,4,55)
 ,(35,1,3,56)
 ,(35,1,4,57)
 ,(36,1,3,58)
 ,(37,1,4,59)
 ,(38,1,4,60)
 ,(40,1,3,61)
 ,(40,1,4,62)
 ,(41,1,4,63)
 ,(42,1,5,64)
 ,(42,1,8,65)
 ,(43,1,3,66)
 ,(43,1,4,67)
 ,(44,1,5,68)
 ,(45,1,5,69)
 ,(46,1,3,70)
 ,(47,1,3,71)
 ,(48,1,3,72)
 ,(49,1,3,73)
 ,(50,1,3,74)
 ,(51,1,5,75)
 ,(53,1,3,76)
 ,(54,1,3,77)
 ,(55,1,3,78)
 ,(56,1,3,79)
 ,(57,1,3,80)
 ,(58,1,3,81)
 ,(60,1,3,82)
 ,(61,1,3,83)
 ,(62,1,3,84)
 ,(63,1,3,85)
 ,(64,1,3,86)
 ,(66,1,3,87)
 ,(67,1,3,88)
 ,(68,1,3,89)
 ,(70,1,3,90)
 ,(71,1,3,91)
 ,(72,1,3,92)
 ,(73,1,3,93)
 ,(76,1,3,94)
 ,(77,1,3,95)
 ,(78,1,3,96)
 ,(79,1,3,97)
 ,(81,1,3,98)
 ,(82,1,3,99)
 ,(83,1,3,100)
 ,(84,1,3,101)
 ,(85,1,3,102)
 ,(86,1,3,103)
 ,(87,1,3,104)
 ,(88,1,3,105)
 ,(89,1,3,106)
 ,(90,1,8,107)
 ,(91,1,3,108)
 ,(92,1,3,109)
 ,(93,1,3,110)
 ,(94,1,3,111)
 ,(95,1,3,112)
 ,(96,1,3,113)
 ,(98,1,3,114)
 ,(99,1,3,115)
 ,(104,1,5,117)
 ,(104,1,8,118)
 ,(105,1,5,116)
 ,(120,1,5,119)
 ,(125,1,5,152)
 ,(127,2,20,174)
 ,(127,3,20,174)
 ,(127,4,20,174)
 ,(128,1,5,120)
 ,(128,1,6,121)
 ,(131,1,5,128)
 ,(131,1,6,129)
 ,(131,2,5,136)
 ,(131,2,6,137)
 ,(131,3,5,136)
 ,(131,3,6,137)
 ,(132,1,5,144)
 ,(132,1,6,145)
 ,(133,1,5,120)
 ,(133,1,6,121)
 ,(134,1,5,128)
 ,(134,1,6,129)
 ,(134,2,5,136)
 ,(134,2,6,137)
 ,(135,1,5,144)
 ,(135,1,6,145)
 ,(136,1,5,153)
 ,(136,2,5,153)
 ,(136,3,5,175)
 ,(136,3,20,176)
 ,(136,4,5,175)
 ,(136,4,20,176)
 ,(136,5,5,187)
 ,(136,5,20,188)
 ,(136,5,21,189)
 ,(136,6,5,264)
 ,(136,6,20,265)
 ,(136,6,21,266)
 ,(136,6,25,267)
 ,(137,1,5,160)
 ,(137,2,5,177)
 ,(137,2,20,178)
 ,(138,1,5,167)
 ,(138,2,5,179)
 ,(138,2,20,180)
 ,(138,3,5,268)
 ,(138,3,20,269)
 ,(138,3,21,270)
 ,(138,3,25,271)
 ,(139,1,5,190)
 ,(139,1,20,191)
 ,(139,1,21,192)
 ,(141,1,5,193)
 ,(141,1,20,194)
 ,(141,1,21,195)
 ,(142,1,5,196)
 ,(142,1,20,197)
 ,(142,1,21,198)
 ,(143,1,5,199)
 ,(143,1,20,200)
 ,(143,1,21,201)
 ,(144,1,5,202)
 ,(144,1,20,203)
 ,(144,1,21,204)
 ,(145,1,5,205)
 ,(145,1,20,206)
 ,(145,1,21,207)
 ,(146,1,5,208)
 ,(146,1,20,209)
 ,(146,1,21,210)
 ,(147,1,5,211)
 ,(147,1,20,212)
 ,(147,1,21,213)
 ,(149,1,5,220)
 ,(149,1,6,221)
 ,(149,1,8,222)
 ,(149,1,9,223)
 ,(149,1,20,224)
 ,(149,1,22,225)
 ,(149,2,5,226)
 ,(149,2,6,227)
 ,(149,2,8,228)
 ,(149,2,9,229)
 ,(149,2,20,230)
 ,(149,2,22,231)
 ,(149,3,5,232)
 ,(149,3,6,233)
 ,(149,3,8,234)
 ,(149,3,9,235)
 ,(149,3,20,236)
 ,(149,3,22,237)
 ,(149,4,5,232)
 ,(149,4,6,233)
 ,(149,4,8,234)
 ,(149,4,9,235)
 ,(149,4,20,236)
 ,(149,4,22,237)
 ,(149,5,5,238)
 ,(149,5,6,239)
 ,(149,5,8,240)
 ,(149,5,9,241)
 ,(149,5,20,242)
 ,(149,5,22,243)
 ,(149,5,23,244)
 ,(149,5,24,245)
 ,(150,2,20,246)
 ,(152,1,20,249)
 ,(152,1,21,250)
 ,(152,2,20,249)
 ,(152,2,21,250)
 ,(155,1,5,272)
 ,(155,1,20,273)
 ,(155,1,21,274)
 ,(155,1,25,275)
 ,(156,1,5,276)
 ,(156,1,20,277)
 ,(156,1,21,278)
 ,(156,1,25,279)
 ,(165,1,20,280)
 ,(165,1,21,281);

DROP TABLE IF EXISTS collectionversionareastyles;

CREATE TABLE IF NOT EXISTS `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS collectionversionblockstyles;

CREATE TABLE IF NOT EXISTS `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO collectionversionblockstyles VALUES(137,1,19,'Main',0)
 ,(1,7,16,'Header',0)
 ,(137,1,20,'Header',0)
 ,(138,1,19,'Main',0)
 ,(138,1,20,'Header',0)
 ,(136,3,21,'Main',0)
 ,(136,3,22,'Header',0)
 ,(137,2,19,'Main',0)
 ,(137,2,20,'Header',0)
 ,(138,2,19,'Main',0)
 ,(138,2,20,'Header',0)
 ,(136,4,21,'Main',0)
 ,(136,4,22,'Header',0)
 ,(136,5,21,'Main',0)
 ,(136,5,22,'Header',0)
 ,(136,5,23,'ImageCarousel',0)
 ,(136,5,24,'ImageCarousel',0)
 ,(136,5,25,'ImageCarousel',0)
 ,(139,1,19,'Main',0)
 ,(139,1,20,'Header',0)
 ,(141,1,19,'Main',0)
 ,(141,1,20,'Header',0)
 ,(142,1,19,'Main',0)
 ,(142,1,20,'Header',0)
 ,(143,1,19,'Main',0)
 ,(143,1,20,'Header',0)
 ,(144,1,19,'Main',0)
 ,(144,1,20,'Header',0)
 ,(145,1,19,'Main',0)
 ,(145,1,20,'Header',0)
 ,(146,1,19,'Main',0)
 ,(146,1,20,'Header',0)
 ,(147,1,19,'Main',0)
 ,(149,5,27,'Main',0)
 ,(147,1,26,'Header',0)
 ,(154,5,58,'Main',0)
 ,(154,4,51,'Main',0)
 ,(154,4,52,'Main',0)
 ,(154,4,50,'Main',0)
 ,(154,4,53,'Main',0)
 ,(154,4,55,'Main',0)
 ,(154,4,56,'Main',0)
 ,(154,5,59,'Main',0)
 ,(154,5,60,'Main',0)
 ,(154,5,61,'Main',0)
 ,(154,5,62,'Main',0)
 ,(154,6,57,'Main',0)
 ,(154,5,57,'Main',0)
 ,(154,6,58,'Main',0)
 ,(154,6,59,'Main',0)
 ,(154,6,60,'Main',0)
 ,(154,6,61,'Main',0)
 ,(154,6,62,'Main',0)
 ,(1,8,16,'Header',0)
 ,(1,9,16,'Header',0)
 ,(136,6,21,'Main',0)
 ,(136,6,22,'Header',0)
 ,(136,6,23,'ImageCarousel',0)
 ,(136,6,24,'ImageCarousel',0)
 ,(136,6,25,'ImageCarousel',0)
 ,(138,3,19,'Main',0)
 ,(138,3,20,'Header',0)
 ,(155,1,19,'Main',0)
 ,(155,1,20,'Header',0)
 ,(156,1,19,'Main',0)
 ,(156,1,20,'Header',0)
 ,(1,10,16,'Header',0)
 ,(1,11,16,'Header',0)
 ,(1,10,65,'Project Info',0)
 ,(1,12,16,'Header',0)
 ,(1,11,66,'Project Info',0)
 ,(1,13,16,'Header',0)
 ,(1,12,67,'Project Info',0)
 ,(1,13,67,'Project Info',0)
 ,(1,14,16,'Header',0)
 ,(1,14,67,'Project Info',0)
 ,(160,4,70,'Main',0)
 ,(1,14,69,'Persons Info',0)
 ,(127,4,71,'Main',0);

DROP TABLE IF EXISTS collectionversionrelatededits;

CREATE TABLE IF NOT EXISTS `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS composercontentlayout;

CREATE TABLE IF NOT EXISTS `composercontentlayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS composerdrafts;

CREATE TABLE IF NOT EXISTS `composerdrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS composertypes;

CREATE TABLE IF NOT EXISTS `composertypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS customstylepresets;

CREATE TABLE IF NOT EXISTS `customstylepresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS customstylerules;

CREATE TABLE IF NOT EXISTS `customstylerules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS dashboardhomepage;

CREATE TABLE IF NOT EXISTS `dashboardhomepage` (
  `dbhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbhModule` varchar(255) NOT NULL,
  `dbhDisplayName` varchar(255) DEFAULT NULL,
  `dbhDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS downloadstatistics;

CREATE TABLE IF NOT EXISTS `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS fileattributevalues;

CREATE TABLE IF NOT EXISTS `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO fileattributevalues VALUES(1,1,12,181)
 ,(1,1,13,182)
 ,(2,1,12,183)
 ,(2,1,13,184)
 ,(3,1,12,185)
 ,(3,1,13,186)
 ,(6,1,12,218)
 ,(6,1,13,219)
 ,(7,1,12,247)
 ,(7,1,13,248)
 ,(8,1,12,251)
 ,(8,1,13,252)
 ,(9,1,12,253)
 ,(9,1,13,254)
 ,(10,1,12,255)
 ,(10,1,13,256)
 ,(11,1,12,257)
 ,(11,1,13,258)
 ,(12,1,12,259)
 ,(12,1,13,260)
 ,(13,1,12,261)
 ,(13,1,13,262);

DROP TABLE IF EXISTS filepermissionassignments;

CREATE TABLE IF NOT EXISTS `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filepermissionfiletypes;

CREATE TABLE IF NOT EXISTS `filepermissionfiletypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filepermissions;

CREATE TABLE IF NOT EXISTS `filepermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`gID`,`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filesearchindexattributes;

CREATE TABLE IF NOT EXISTS `filesearchindexattributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO filesearchindexattributes VALUES(1,554.0000,420.0000)
 ,(2,554.0000,420.0000)
 ,(3,554.0000,420.0000)
 ,(4,224.0000,224.0000)
 ,(5,90.0000,90.0000)
 ,(6,120.0000,90.0000)
 ,(7,1024.0000,1024.0000)
 ,(8,72.0000,72.0000)
 ,(9,72.0000,72.0000)
 ,(10,72.0000,72.0000)
 ,(11,72.0000,72.0000)
 ,(12,72.0000,72.0000)
 ,(13,72.0000,72.0000)
 ,(14,0.0000,0.0000);

DROP TABLE IF EXISTS filesetpermissionassignments;

CREATE TABLE IF NOT EXISTS `filesetpermissionassignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO filesetpermissionassignments VALUES(0,36,34)
 ,(0,37,35)
 ,(0,38,36)
 ,(0,39,37)
 ,(0,40,38)
 ,(0,41,39)
 ,(0,42,41)
 ,(0,43,40)
 ,(0,44,42);

DROP TABLE IF EXISTS filesetpermissionfiletypeaccesslist;

CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filesetpermissionfiletypeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filesetsavedsearches;

CREATE TABLE IF NOT EXISTS `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filestoragelocations;

CREATE TABLE IF NOT EXISTS `filestoragelocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS fileversionlog;

CREATE TABLE IF NOT EXISTS `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO fileversionlog VALUES(1,1,1,5,12)
 ,(2,1,1,5,13)
 ,(3,2,1,5,12)
 ,(4,2,1,5,13)
 ,(5,3,1,5,12)
 ,(6,3,1,5,13)
 ,(18,7,1,5,13)
 ,(17,7,1,5,12)
 ,(16,6,1,5,13)
 ,(15,6,1,5,12)
 ,(19,8,1,5,12)
 ,(20,8,1,5,13)
 ,(21,9,1,5,12)
 ,(22,9,1,5,13)
 ,(23,10,1,5,12)
 ,(24,10,1,5,13)
 ,(25,11,1,5,12)
 ,(26,11,1,5,13)
 ,(27,12,1,5,12)
 ,(28,12,1,5,13)
 ,(29,13,1,5,12)
 ,(30,13,1,5,13);

DROP TABLE IF EXISTS groupsetgroups;

CREATE TABLE IF NOT EXISTS `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS groupsets;

CREATE TABLE IF NOT EXISTS `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS jobs;

CREATE TABLE IF NOT EXISTS `jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO jobs VALUES(1,'Index Search Engine','Index the site to allow searching to work quickly and accurately.','2012-11-29 14:17:33',NULL,0,NULL,0,'ENABLED','index_search',1)
 ,(2,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2012-11-29 14:17:33',NULL,0,NULL,0,'ENABLED','generate_sitemap',0)
 ,(3,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2012-11-29 14:17:33',NULL,0,NULL,0,'ENABLED','process_email',0)
 ,(4,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2012-11-29 14:17:33',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0);

DROP TABLE IF EXISTS jobslog;

CREATE TABLE IF NOT EXISTS `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS mailimporters;

CREATE TABLE IF NOT EXISTS `mailimporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO mailimporters VALUES(1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');

DROP TABLE IF EXISTS mailvalidationhashes;

CREATE TABLE IF NOT EXISTS `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionassignments;

CREATE TABLE IF NOT EXISTS `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO pagepermissionassignments VALUES(1,1,45)
 ,(1,2,46)
 ,(1,3,47)
 ,(1,4,48)
 ,(1,5,49)
 ,(1,6,50)
 ,(1,7,51)
 ,(1,8,52)
 ,(1,9,53)
 ,(1,10,54)
 ,(1,11,55)
 ,(1,12,56)
 ,(1,13,57)
 ,(1,14,58)
 ,(1,15,59)
 ,(2,1,18)
 ,(2,2,19)
 ,(2,3,24)
 ,(2,4,20)
 ,(2,5,21)
 ,(2,6,26)
 ,(2,7,28)
 ,(2,8,30)
 ,(2,9,27)
 ,(2,10,31)
 ,(2,11,32)
 ,(2,12,22)
 ,(2,13,25)
 ,(2,14,23)
 ,(2,15,29)
 ,(42,1,33)
 ,(109,1,34)
 ,(110,1,35);

DROP TABLE IF EXISTS pagepermissionpagetypeaccesslist;

CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionpagetypeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionpropertyaccesslist;

CREATE TABLE IF NOT EXISTS `pagepermissionpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionpropertyattributeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionthemeaccesslist;

CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionthemeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagetypeattributes;

CREATE TABLE IF NOT EXISTS `pagetypeattributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO pagetypeattributes VALUES(6,5)
 ,(6,20)
 ,(6,21)
 ,(6,25)
 ,(8,5)
 ,(8,6)
 ,(8,8)
 ,(8,9)
 ,(8,20)
 ,(8,22)
 ,(8,23)
 ,(8,24)
 ,(9,20)
 ,(9,21);

DROP TABLE IF EXISTS pageworkflowprogress;

CREATE TABLE IF NOT EXISTS `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS permissionaccessentitytypecategories;

CREATE TABLE IF NOT EXISTS `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO permissionaccessentitytypecategories VALUES(1,1)
 ,(1,5)
 ,(1,6)
 ,(1,7)
 ,(1,8)
 ,(1,9)
 ,(1,10)
 ,(1,11)
 ,(1,12)
 ,(1,13)
 ,(1,14)
 ,(2,1)
 ,(2,5)
 ,(2,6)
 ,(2,7)
 ,(2,8)
 ,(2,9)
 ,(2,10)
 ,(2,11)
 ,(2,12)
 ,(2,13)
 ,(2,14)
 ,(3,1)
 ,(3,5)
 ,(3,6)
 ,(3,7)
 ,(3,8)
 ,(3,9)
 ,(3,10)
 ,(3,11)
 ,(3,12)
 ,(3,13)
 ,(3,14)
 ,(4,1)
 ,(4,5)
 ,(4,6)
 ,(4,7)
 ,(4,8)
 ,(4,9)
 ,(4,10)
 ,(4,11)
 ,(4,12)
 ,(4,13)
 ,(4,14)
 ,(5,1)
 ,(6,6)
 ,(6,7);

DROP TABLE IF EXISTS permissionaccessentitytypes;

CREATE TABLE IF NOT EXISTS `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO permissionaccessentitytypes VALUES(1,'group','Group',0)
 ,(2,'user','User',0)
 ,(3,'group_set','Group Set',0)
 ,(4,'group_combination','Group Combination',0)
 ,(5,'page_owner','Page Owner',0)
 ,(6,'file_uploader','File Uploader',0);

DROP TABLE IF EXISTS permissionaccesslist;

CREATE TABLE IF NOT EXISTS `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO permissionaccesslist VALUES(1,1,0,10)
 ,(2,1,0,10)
 ,(3,1,0,10)
 ,(4,1,0,10)
 ,(5,1,0,10)
 ,(6,1,0,10)
 ,(7,1,0,10)
 ,(8,1,0,10)
 ,(9,1,0,10)
 ,(10,1,0,10)
 ,(11,1,0,10)
 ,(12,1,0,10)
 ,(13,1,0,10)
 ,(14,1,0,10)
 ,(15,1,0,10)
 ,(16,1,0,10)
 ,(17,1,0,10)
 ,(18,1,0,10)
 ,(19,1,0,10)
 ,(20,1,0,10)
 ,(21,1,0,10)
 ,(22,1,0,10)
 ,(23,1,0,10)
 ,(24,1,0,10)
 ,(25,1,0,10)
 ,(26,1,0,10)
 ,(27,1,0,10)
 ,(28,1,0,10)
 ,(29,1,0,10)
 ,(30,1,0,10)
 ,(31,1,0,10)
 ,(32,1,0,10)
 ,(33,2,0,10)
 ,(34,2,0,10)
 ,(34,3,0,10)
 ,(35,2,0,10)
 ,(36,2,0,10)
 ,(36,1,0,10)
 ,(37,1,0,10)
 ,(38,1,0,10)
 ,(39,1,0,10)
 ,(40,1,0,10)
 ,(41,1,0,10)
 ,(42,1,0,10)
 ,(43,1,0,10)
 ,(44,1,0,10)
 ,(45,2,0,10)
 ,(46,1,0,10)
 ,(47,1,0,10)
 ,(48,1,0,10)
 ,(49,1,0,10)
 ,(50,1,0,10)
 ,(51,1,0,10)
 ,(52,1,0,10)
 ,(53,1,0,10)
 ,(54,1,0,10)
 ,(55,1,0,10)
 ,(56,1,0,10)
 ,(57,1,0,10)
 ,(58,1,0,10)
 ,(59,1,0,10);

DROP TABLE IF EXISTS permissionaccessworkflows;

CREATE TABLE IF NOT EXISTS `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS permissiondurationobjects;

CREATE TABLE IF NOT EXISTS `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS permissionkeycategories;

CREATE TABLE IF NOT EXISTS `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO permissionkeycategories VALUES(1,'page',NULL)
 ,(2,'single_page',NULL)
 ,(3,'stack',NULL)
 ,(4,'composer_page',NULL)
 ,(5,'user',NULL)
 ,(6,'file_set',NULL)
 ,(7,'file',NULL)
 ,(8,'area',NULL)
 ,(9,'block_type',NULL)
 ,(10,'block',NULL)
 ,(11,'admin',NULL)
 ,(12,'sitemap',NULL)
 ,(13,'marketplace_newsflow',NULL)
 ,(14,'basic_workflow',NULL);

DROP TABLE IF EXISTS pilecontents;

CREATE TABLE IF NOT EXISTS `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO pilecontents VALUES(1,1,37,'BLOCK',1,'2012-12-18 13:12:11',1)
 ,(2,1,40,'BLOCK',1,'2012-12-18 14:03:23',2);

DROP TABLE IF EXISTS piles;

CREATE TABLE IF NOT EXISTS `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO piles VALUES(1,1,1,'2012-12-18 13:12:11',NULL,'READY');

DROP TABLE IF EXISTS systemantispamlibraries;

CREATE TABLE IF NOT EXISTS `systemantispamlibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS systemcaptchalibraries;

CREATE TABLE IF NOT EXISTS `systemcaptchalibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO systemcaptchalibraries VALUES('securimage','SecurImage (Default)',1,0);

DROP TABLE IF EXISTS systemnotifications;

CREATE TABLE IF NOT EXISTS `systemnotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userattributekeys;

CREATE TABLE IF NOT EXISTS `userattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO userattributekeys VALUES(10,0,0,1,0,1,0,1,1)
 ,(11,0,0,1,0,1,0,2,1);

DROP TABLE IF EXISTS userattributevalues;

CREATE TABLE IF NOT EXISTS `userattributevalues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionassigngroupaccesslist;

CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionassigngroupaccesslistcustom;

CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissioneditpropertyaccesslist;

CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissioneditpropertyattributeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionusersearchaccesslist;

CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionusersearchaccesslistcustom;

CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionviewattributeaccesslist;

CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionviewattributeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userprivatemessages;

CREATE TABLE IF NOT EXISTS `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS usersearchindexattributes;

CREATE TABLE IF NOT EXISTS `usersearchindexattributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS usersfriends;

CREATE TABLE IF NOT EXISTS `usersfriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS uservalidationhashes;

CREATE TABLE IF NOT EXISTS `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS workflowprogresscategories;

CREATE TABLE IF NOT EXISTS `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO workflowprogresscategories VALUES(1,'page',NULL)
 ,(2,'file',NULL)
 ,(3,'user',NULL);

DROP TABLE IF EXISTS workflowprogresshistory;

CREATE TABLE IF NOT EXISTS `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

INSERT INTO workflowprogresshistory VALUES(1,1,'2012-11-30 11:34:57','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"1\";}')
 ,(2,2,'2012-11-30 13:52:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"2\";}')
 ,(3,3,'2012-11-30 14:46:49','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"128\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"3\";}')
 ,(4,4,'2012-12-03 13:55:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"4\";}')
 ,(5,5,'2012-12-03 14:00:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"5\";}')
 ,(6,6,'2012-12-03 14:04:54','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"6\";}')
 ,(7,7,'2012-12-03 15:54:15','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"7\";}')
 ,(8,8,'2012-12-03 16:17:26','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"8\";}')
 ,(9,9,'2012-12-03 16:47:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"9\";}')
 ,(10,10,'2012-12-04 09:58:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"131\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"10\";}')
 ,(11,11,'2012-12-04 09:59:07','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"131\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"11\";}')
 ,(12,12,'2012-12-04 09:59:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"132\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"12\";}')
 ,(13,13,'2012-12-04 09:59:46','O:27:\"MovePagePageWorkflowRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"127\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"132\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"13\";}')
 ,(14,14,'2012-12-04 10:01:24','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"128\";s:4:\"wrID\";s:2:\"14\";}')
 ,(15,15,'2012-12-04 10:01:27','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"133\";s:4:\"wrID\";s:2:\"15\";}')
 ,(16,16,'2012-12-04 10:01:30','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"131\";s:4:\"wrID\";s:2:\"16\";}')
 ,(17,17,'2012-12-04 10:01:34','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"134\";s:4:\"wrID\";s:2:\"17\";}')
 ,(18,18,'2012-12-04 10:01:37','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"132\";s:4:\"wrID\";s:2:\"18\";}')
 ,(19,19,'2012-12-04 10:01:41','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"135\";s:4:\"wrID\";s:2:\"19\";}')
 ,(20,20,'2012-12-04 10:11:15','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"131\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"20\";}')
 ,(21,21,'2012-12-04 10:12:02','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"21\";}')
 ,(22,22,'2012-12-04 10:13:09','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"125\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"22\";}')
 ,(23,23,'2012-12-04 10:13:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"23\";}')
 ,(24,24,'2012-12-04 10:14:16','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"24\";}')
 ,(25,25,'2012-12-04 10:14:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"138\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"25\";}')
 ,(26,26,'2012-12-10 10:36:05','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"26\";}')
 ,(27,27,'2012-12-10 10:36:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"27\";}')
 ,(28,28,'2012-12-10 11:00:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"28\";}')
 ,(29,29,'2012-12-10 11:00:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"29\";}')
 ,(30,30,'2012-12-10 11:00:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"138\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"30\";}')
 ,(31,31,'2012-12-11 15:22:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"31\";}')
 ,(32,32,'2012-12-13 13:02:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"32\";}')
 ,(33,33,'2012-12-13 13:23:14','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"33\";}')
 ,(34,34,'2012-12-13 13:30:56','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"139\";s:4:\"wrID\";s:2:\"34\";}')
 ,(35,35,'2012-12-13 13:31:00','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"141\";s:4:\"wrID\";s:2:\"35\";}')
 ,(36,36,'2012-12-13 13:31:05','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"140\";s:4:\"wrID\";s:2:\"36\";}')
 ,(37,37,'2012-12-13 13:31:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"142\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"37\";}')
 ,(38,38,'2012-12-13 14:21:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"147\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"38\";}')
 ,(39,39,'2012-12-13 14:59:53','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"144\";s:4:\"wrID\";s:2:\"39\";}')
 ,(40,40,'2012-12-13 14:59:56','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"145\";s:4:\"wrID\";s:2:\"40\";}')
 ,(41,41,'2012-12-13 14:59:57','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"145\";s:4:\"wrID\";s:2:\"41\";}')
 ,(42,42,'2012-12-13 15:00:00','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"142\";s:4:\"wrID\";s:2:\"42\";}')
 ,(43,43,'2012-12-13 15:00:04','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"143\";s:4:\"wrID\";s:2:\"43\";}')
 ,(44,44,'2012-12-13 15:00:07','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"146\";s:4:\"wrID\";s:2:\"44\";}')
 ,(45,45,'2012-12-13 15:00:10','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"147\";s:4:\"wrID\";s:2:\"45\";}')
 ,(46,46,'2012-12-13 18:39:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"149\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"46\";}')
 ,(47,47,'2012-12-13 18:58:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"149\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"47\";}')
 ,(48,48,'2012-12-13 18:59:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"149\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"48\";}')
 ,(49,49,'2012-12-14 13:40:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"149\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"49\";}')
 ,(50,50,'2012-12-14 13:45:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"149\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"50\";}')
 ,(51,51,'2012-12-17 14:43:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"51\";}')
 ,(52,52,'2012-12-17 15:10:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"150\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"52\";}')
 ,(53,53,'2012-12-17 15:10:56','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"150\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"53\";}')
 ,(54,54,'2012-12-17 15:22:03','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"152\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"54\";}')
 ,(55,55,'2012-12-17 15:24:25','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"152\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"55\";}')
 ,(56,56,'2012-12-17 18:09:59','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"154\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"56\";}')
 ,(57,57,'2012-12-18 13:35:43','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"154\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"57\";}')
 ,(58,58,'2012-12-18 14:48:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"154\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"58\";}')
 ,(59,59,'2012-12-18 14:59:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"154\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"59\";}')
 ,(60,60,'2012-12-18 15:06:49','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"154\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"60\";}')
 ,(61,61,'2012-12-18 15:23:05','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"154\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"61\";}')
 ,(62,62,'2012-12-19 13:58:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"62\";}')
 ,(63,63,'2012-12-19 14:32:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"63\";}')
 ,(64,64,'2012-12-19 14:48:58','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"138\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"64\";}')
 ,(65,65,'2012-12-19 14:59:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"65\";}')
 ,(66,66,'2012-12-19 15:45:36','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"155\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"66\";}')
 ,(67,67,'2012-12-19 15:47:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"67\";}')
 ,(68,68,'2012-12-19 15:52:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"68\";}')
 ,(69,69,'2012-12-19 16:02:05','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"69\";}')
 ,(70,70,'2012-12-19 16:09:45','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"70\";}')
 ,(71,71,'2012-12-19 16:16:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"71\";}')
 ,(72,72,'2012-12-19 16:17:14','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"72\";}')
 ,(73,73,'2012-12-20 15:11:01','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"73\";}')
 ,(74,74,'2012-12-20 15:11:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"74\";}')
 ,(75,75,'2012-12-20 15:12:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"161\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"75\";}')
 ,(76,76,'2012-12-20 15:12:45','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"76\";}')
 ,(77,77,'2012-12-20 15:13:05','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"77\";}')
 ,(78,78,'2012-12-20 15:16:32','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"78\";}')
 ,(79,79,'2012-12-20 15:50:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"79\";}')
 ,(80,80,'2012-12-20 15:50:41','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"161\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"80\";}')
 ,(81,81,'2012-12-20 15:50:49','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"81\";}')
 ,(82,82,'2012-12-20 15:50:58','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"82\";}')
 ,(83,83,'2012-12-20 16:22:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"83\";}')
 ,(84,84,'2012-12-21 11:37:26','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"164\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"84\";}')
 ,(85,85,'2012-12-21 13:27:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"85\";}')
 ,(86,86,'2012-12-21 14:48:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"86\";}')
 ,(87,87,'2012-12-21 14:53:37','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"87\";}');

DROP TABLE IF EXISTS workflowrequestobjects;

CREATE TABLE IF NOT EXISTS `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS workflowtypes;

CREATE TABLE IF NOT EXISTS `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO workflowtypes VALUES(1,'basic','Basic Workflow',0);

