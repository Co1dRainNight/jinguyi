-- 表：ay_area
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+08:00";
SET NAMES utf8;


DROP TABLE IF EXISTS `ay_area`;
CREATE TABLE `ay_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '区域编号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `pcode` varchar(20) NOT NULL COMMENT '区域父编码',
  `name` varchar(50) NOT NULL COMMENT '区域名称',
  `domain` varchar(100) NOT NULL COMMENT '区域绑定域名',
  `is_default` char(1) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_area_acode` (`acode`),
  KEY `ay_area_pcode` (`pcode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ay_area` (`id`,`acode`,`pcode`,`name`,`domain`,`is_default`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
('1','cn','0','中文','','1','admin','admin','2017-11-30 13:55:37','2018-04-13 11:40:49');

-- 表：ay_company
DROP TABLE IF EXISTS `ay_company`;
CREATE TABLE `ay_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '站点编号',
  `acode` varchar(20) NOT NULL COMMENT '区域代码',
  `name` varchar(100) NOT NULL COMMENT '公司名称',
  `address` varchar(200) NOT NULL COMMENT '公司地址',
  `postcode` varchar(6) NOT NULL COMMENT '邮政编码',
  `contact` varchar(10) NOT NULL COMMENT '公司联系人',
  `mobile` varchar(50) NOT NULL COMMENT '手机号码',
  `phone` varchar(50) NOT NULL COMMENT '电话号码',
  `fax` varchar(50) NOT NULL COMMENT '公司传真',
  `email` varchar(30) NOT NULL COMMENT '电子邮箱',
  `qq` varchar(50) NOT NULL COMMENT '公司QQ',
  `weixin` varchar(100) NOT NULL COMMENT '微信图标',
  `blicense` varchar(20) NOT NULL COMMENT '营业执照代码',
  `other` varchar(200) NOT NULL COMMENT '其他信息',
  PRIMARY KEY (`id`),
  KEY `ay_company_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ay_company` (`id`,`acode`,`name`,`address`,`postcode`,`contact`,`mobile`,`phone`,`fax`,`email`,`qq`,`weixin`,`blicense`,`other`) VALUES
('1','cn','深圳市今古意文化艺术科技有限公司','','','段先生','18562521314','','','','','/static/upload/image/20180715/1531651052464521.png','','');

-- 表：ay_config
DROP TABLE IF EXISTS `ay_config`;
CREATE TABLE `ay_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `value` varchar(200) NOT NULL COMMENT '值',
  `type` char(1) NOT NULL DEFAULT '1' COMMENT '配置类型',
  `sorting` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `description` varchar(30) NOT NULL COMMENT '描述文本',
  PRIMARY KEY (`id`),
  KEY `ay_config_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO `ay_config` (`id`,`name`,`value`,`type`,`sorting`,`description`) VALUES
 ('1', 'open_wap', '0', '1', '255', '手机版'),
 ('2', 'message_check_code', '0', '1', '255', '留言验证码'),
 ('3', 'smtp_server', 'smtp.qq.com', '2', '255', '邮件SMTP服务器'),
 ('4', 'smtp_port', '465', '2', '255', '邮件SMTP端口'),
 ('5', 'smtp_ssl', '1', '1', '255', '邮件是否安全连接'),
 ('6', 'smtp_username', '43171398@qq.com', '2', '255', '邮件发送账号'),
 ('7', 'smtp_password', '', '2', '255', '邮件发送密码'),
 ('8', 'admin_check_code', '1', '1', '255', '后台验证码'),
 ('9', 'weixin_appid', '', '2', '255', '微信APPID'),
 ('10', 'weixin_secret', '', '2', '255', '微信SECRET'),
 ('11', 'message_send_mail', '0', '1', '255', '留言发送邮件开关'),
 ('12', 'message_send_to', 'YunYunAn@5moban.com', '1', '255', '留言发送到邮箱'),
 ('13', 'api_open', '0', '2', '255', 'API开关'),
 ('14', 'api_auth', '1', '2', '255', 'API强制认证'),
 ('15', 'api_appid', '', '2', '255', 'API认证用户'),
 ('16', 'api_secret', '', '2', '255', 'API认证密钥'),
 ('17', 'baidu_zz_token', '', '2', '255', '百度站长密钥'),
 ('18', 'baidu_xzh_appid', '', '2', '255', '熊掌号appid'),
 ('19', 'baidu_xzh_token', '', '2', '255', '熊掌号token'),
 ('20', 'wap_domain', '', '2', '255', '手机绑定域名'),
 ('21', 'gzip', '0', '2', '255', 'GZIP压缩'),
 ('22', 'content_tags_replace_num', '', '2', '255', '内容关键字替换次数'),
 ('23', 'smtp_username_test', '5MoBan@WanWeiZhan.Com', '2', '255', '测试邮箱'),
 ('24', 'form_send_mail', '0', '2', '255', '表单发送邮件'),
 ('25', 'baidu_xzh_type', '0', '2', '255', '熊掌号推送类型'),
 ('26', 'watermark_open', '0', '2', '255', '水印开关'),
 ('27', 'watermark_text', 'www.AdminBaby.com', '2', '255', '水印文本'),
 ('28', 'watermark_text_font', '', '2', '255', '水印文本字体'),
 ('29', 'watermark_text_size', '20', '2', '255', '水印文本字号'),
 ('30', 'watermark_text_color', '100,100,100', '2', '255', '水印文本字体颜色'),
 ('31', 'watermark_pic', '/static/images/logo.png', '2', '255', '水印图片'),
 ('32', 'watermark_position', '4', '2', '255', '水印位置'),
 ('33', 'message_verify', '1', '2', '255', '留言审核'),
 ('34', 'form_check_code', '0', '2', '255', '表单验证码'),
 ('35', 'lock_count', '5', '2', '255', '登陆锁定阈值'),
 ('36', 'lock_time', '900', '2', '255', '登录锁定时间'),
 ('37', 'url_rule_type', '3', '2', '255', '路径类型'),
 ('38', 'url_rule_sort_suffix', '0', '2', '255', ''),
 ('39', 'upgrade_branch', '3.X', '2', '255', ''),
 ('40', 'upgrade_force', '0', '2', '255', ''),
 ('41', 'close_site', '0', '2', '255', ''),
 ('42', 'close_site_note', '', '2', '255', ''),
 ('43', 'lgautosw', '1', '2', '255', ''),
 ('44', 'spiderlog', '1', '2', '255', ''),
 ('45', 'to_https', '0', '2', '255', ''),
 ('46', 'to_main_domain', '0', '2', '255', ''),
 ('47', 'main_domain', '', '2', '255', ''),
 ('48', 'content_keyword_replace', '', '2', '255', ''),
 ('49', 'sn', '7DABBC41AA,1199842788', '2', '255', ''),
 ('50', 'sn_user', '', '2', '255', ''),
 ('51', 'licensecode', 'N0RBQkJDNDFBQSwxMTk5ODQyNzg4Lw==D', '2', '255', ''),
 ('52', 'url_rule_content_path', '0', '2', '255', ''),
 ('53', 'comment_send_mail', '0', '2', '255', ''),
 ('54', 'message_status','1','2','255','留言开关'),
 ('55', 'form_status','1','2','255','表单开关'),
 ('56', 'tpl_html_dir','html','2','255','模板HTML目录'),
 ('57', 'ip_deny','','2','255','IP黑名单'),
 ('58', 'ip_allow','','2','255','IP白名单'),
 ('59', 'url_index_404','0','2','255','跳转404') ;

DROP TABLE IF EXISTS `ay_content`;
CREATE TABLE `ay_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `acode` varchar(20) NOT NULL COMMENT '区域',
  `scode` varchar(20) NOT NULL COMMENT '内容栏目',
  `subscode` varchar(20) NOT NULL COMMENT '副栏目',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `titlecolor` varchar(7) NOT NULL COMMENT '标题颜色',
  `subtitle` varchar(100) NOT NULL COMMENT '副标题',
  `filename` varchar(50) NOT NULL COMMENT '自定义文件名',
  `author` varchar(30) NOT NULL COMMENT '作者',
  `source` varchar(30) NOT NULL COMMENT '来源',
  `outlink` varchar(100) NOT NULL COMMENT '外链地址',
  `date` datetime NOT NULL COMMENT '发布日期',
  `ico` varchar(100) NOT NULL COMMENT '缩略图',
  `pics` varchar(1000) NOT NULL COMMENT '多图片',
  `picstitle` varchar(1000) NOT NULL COMMENT '多图片标题',
  `content` mediumtext NOT NULL COMMENT '内容',
  `tags` varchar(500) NOT NULL COMMENT 'tag关键字',
  `enclosure` varchar(100) NOT NULL COMMENT '附件',
  `keywords` varchar(200) NOT NULL COMMENT '关键字',
  `description` varchar(500) NOT NULL COMMENT '描述',
  `sorting` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '内容排序',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `istop` char(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `isrecommend` char(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `isheadline` char(1) NOT NULL DEFAULT '0' COMMENT '是否头条',
  `visits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `likes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `oppose` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '反对数',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(20) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `gtype` char(1) NOT NULL DEFAULT '4',
  `gid` varchar(20) NOT NULL DEFAULT '',
  `gnote` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_content_unique` (`sorting`,`istop`,`isrecommend`,`isheadline`,`date`,`id`),
  KEY `ay_content_scode` (`scode`),
  KEY `ay_content_subscode` (`subscode`),
  KEY `ay_content_acode` (`acode`),
  KEY `ay_content_filename` (`filename`),
  KEY `ay_content_date` (`date`),
  KEY `ay_content_sorting` (`sorting`),
  KEY `ay_content_status` (`status`),
  KEY `ay_content_title_index` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
INSERT INTO `ay_content` (`id`,`acode`,`scode`,`subscode`,`title`,`titlecolor`,`subtitle`,`filename`,`author`,`source`,`outlink`,`date`,`ico`,`pics`,`content`,`tags`,`enclosure`,`keywords`,`description`,`sorting`,`status`,`istop`,`isrecommend`,`isheadline`,`visits`,`likes`,`oppose`,`create_user`,`update_user`,`create_time`,`update_time`,`gtype`,`gid`,`gnote`) VALUES
 ('1', 'cn', '5', '', '联系我们', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 16:48:31', '', '', '', '', '', '', '', '255', '1', '0', '0', '0', '18', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 16:48:31', ' 2022-03-03 12:35:19', '4', '', ''),
 ('2', 'cn', '6', '', '公司简介', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 16:49:30', '', '', '&lt;p&g供。&lt;/p&gt;WanWeiZhan.Com ', '', '', '', '一家务给予客人方面。作为一家', '255', '1', '0', '0', '0', '34','0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 16:49:30', ' 2022-03-03 12:35:09', '4','',''),
 ('3', 'cn', '7', '', '企业文化', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 16:49:30', '', '', '&lt;p&gt;经营理念：通过品质和服务来赢取市场，并为顾客创造价值、为员工实现价值、实现企业可持续的价值最大化。&lt;/p&gt;&lt;p&gt;企业精神：团结进取、求真务实、诚信奉献、开拓创新。&lt;/p&gt;&lt;p&gt;企业使命：制造高品质产品，缔造高品位生活。&lt;/p&gt;&lt;p&gt;价值观念：客户就是价值，员工就是财富，创新就是未来。追求每一个流程价值最大化。&lt;/p&gt;&lt;p&gt;道德准则：尽忠企业、敬守职业、忠诚为人、正直对事。&lt;/p&gt;WanWeiZhan.Com ', '站长宝贝网,AdminBaby.Com,快模板,KuaiMoBan.Com,环球数据,GloIDC.Com,PB模板网,pbmo.cn,pb牛X网,pbnx.cn,比特模板btmb.cn,万能PB,wnpb.cn,模板排行,mbph.cn,助力网站,ZLwz.Com', '', '', '经营理念：通过品质和服务来赢取市场，并为顾客创造价值、为员工实现价值、实现企业可持续的价值最大化。企业精神：团结进取、求真务实、诚信奉献、开拓创新。企业使命：制造高品质产品，缔造高品位生活。价值观念：客户就是价值，员工就是财富，创新就是未来。追求每一个流程价值最大化。道德准则：尽忠企业、敬守职业、忠', '255', '1', '0', '0', '0', '0', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 16:49:30', ' 2022-03-03 12:35:02', '4', '', ''),
 ('4', 'cn', '13', '', '(首页)关于我们', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 16:54:25', '/static/upload/image/20220303/1646282181669835.jpg', '',  '', '', '', '', '家', '255', '1', '0', '0', '0', '0', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 16:54:25', ' 2022-03-03 12:36:22', '4', '', ''),
 ('5', 'cn', '3', '', '制作工艺', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:16:56', '/static/upload/image/20220303/1646277946131998.jpg', '', '&lt;p&gt;一、首饰的加工工艺可分为贵金属首饰加工工艺及宝石镶嵌工艺两大类。&lt;/p&gt;&lt;p&gt;二、贵金属加工工艺又可分为传统手工加工工艺、机器加工工艺及表面处理工艺。&lt;/p&gt;&lt;p&gt;三、传统手工加工工艺主要有花丝工艺，机器加工工艺包括失蜡浇铸工艺、冲压工艺、机链工艺等，表面处理工艺包括电镀工艺、压花工艺等。&lt;/p&gt;WanWeiZhan.Com ', '站长宝贝网,AdminBaby.Com,快模板,KuaiMoBan.Com,环球数据,GloIDC.Com,PB模板网,pbmo.cn,pb牛X网,pbnx.cn,比特模板btmb.cn,万能PB,wnpb.cn,模板排行,mbph.cn,助力网站,ZLwz.Com', '', '', '一、首饰的加工工艺可分为贵金属首饰加工工艺及宝石镶嵌工艺两大类。二、贵金属加工工艺又可分为传统手工加工工艺、机器加工工艺及表面处理工艺。三、传统手工加工工艺主要有花丝工艺，机器加工工艺包括失蜡浇铸工艺、冲压工艺、机链工艺等，表面处理工艺包括电镀工艺、压花工艺等。', '1', '1', '0', '0', '0', '0', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:17:16', ' 2022-03-03 11:25:52', '4', '0', ''),
 ('6', 'cn', '3', '', '材料选取', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:17:17', '/static/upload/image/20220303/1646277961125069.jpg', '', '&lt;p&gt;随着社会的发展，在首饰的材质上，人们将不再拘泥于传统昂贵的材料，新型材料层出不穷，包括有机材料和无机材料，甚至俯首可得的材料，都将赋予作品更丰富的内涵和极强的表现力。例如钛金这种以往很少使用的材料在被加热后可变换出丰富的色彩，极富层次感，常被一些现代首饰大师采用。&lt;/p&gt;WanWeiZhan.Com ', '', '', '', '随着社会的发展，在首饰的材质上，人们将不再拘泥于传统昂贵的材料，新型材料层出不穷，包括有机材料和无机材料，甚至俯首可得的材料，都将赋予作品更丰富的内涵和极强的表现力。例如钛金这种以往很少使用的材料在被加热后可变换出丰富的色彩，极富层次感，常被一些现代首饰大师采用。', '2', '1', '0', '0', '0', '0', '0',' 0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:17:30', ' 2022-03-03 11:26:02', '4', '0', ''),
 ('7', 'cn', '3', '', '品质把控', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:17:32', '/static/upload/image/20220303/1646277971547120.jpg', '', '&lt;p&gt;品质应拒绝主观判断，品质的控制源于拒绝妥协，以及对于完美的无限追求。每一个首饰都是必须经过多种严苛的质量检验，品质是对客户的承诺。首饰设计师们努力顺应时代的潮流，在缤纷的世界中寻找自然，简洁和纯真的东西，以期望达到返璞归真和表达一种恒久美的艺术境界。首饰设计制造的三大潮流为简洁、装饰、回归自然。&lt;/p&gt;WanWeiZhan.Com ', '站长宝贝网,AdminBaby.Com,快模板,KuaiMoBan.Com,环球数据,GloIDC.Com,PB模板网,pbmo.cn,pb牛X网,pbnx.cn,比特模板btmb.cn,万能PB,wnpb.cn,模板排行,mbph.cn,助力网站,ZLwz.Com', '', '', '品质应拒绝主观判断，品质的控制源于拒绝妥协，以及对于完美的无限追求。每一个首饰都是必须经过多种严苛的质量检验，品质是对客户的承诺。首饰设计师们努力顺应时代的潮流，在缤纷的世界中寻找自然，简洁和纯真的东西，以期望达到返璞归真和表达一种恒久美的艺术境界。首饰设计制造的三大潮流为简洁、装饰、回归自然。', '3', '1', '0', '0', '0', '0', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:17:45', ' 2022-03-03 11:26:13', '4', '0', '' ),
 ('8', 'cn', '11', '', '首饰加工工艺流程', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:22:09', '/static/upload/image/20190928/1569662555325725.jpg', '', '&lt;p&gt;需要用到裸石一颗，金银若干克，模具一个，碎钻少量首饰步骤以及方法&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;1、设计：珠宝设计师把理念中的款式形象的画出来，交给工艺精湛的珠宝师傅来完成他们的作品&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;2、起板：即利用手造方法制造出首饰样板，并在其适当位置焊上能保证浇铸时引导金属液体顺利灌入的水口棒，作为浇铸用样板。在某些情况下，也采用浮雕的技法直接用雕蜡方法制造出首饰原形，称为起蜡板。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;3、压模：用橡胶片把首饰样板夹在其中，将生胶片塞入一个预选的铝框中，并使被压制的样板填满碎胶片，利用热压机在橡胶中压制后，用手术刀按一定技术规则将胶片割开，取出首饰样板就制成了所谓的胶模。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;4、倒模：先将蜡树固定在铸笼内，放在抽真空机上抽真空，取出后灌入铸笼，再经过蒸蜡，放入烘箱内进行石膏的烘焙了，逐步升温过程即可完成石膏的烘焙制成石膏模。金属料及补口在熔金炉中加热，当合金完全熔化并搅匀后，把金水浇铸到真空机或离心铸造机的石膏中，冷却后就制成了首饰毛坯。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;5、执模：执模是指对首饰毛坯进进行精心修理的工序&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;6、镶石：经执模后，手工将准备好的裸石镶嵌到首饰中&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;7、抛光：抛光后的首饰表面应光亮无比，给人以光彩夺目的美感。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;8、电金：利用白金水（含&amp;quot;铑&amp;quot;元素）对首饰表面进行电镀，使首饰表面更白（白色）、光亮。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;9、品检：典型的镶嵌,绳艺双结合。&lt;/p&gt;WanWeiZhan.Com ', '', '', '', '需要用到裸石一颗，金银若干克，模具一个，碎钻少量首饰步骤以及方法1、设计：珠宝设计师把理念中的款式形象的画出来，交给工艺精湛的珠宝师傅来完成他们的作品2、起板：即利用手造方法制造出首饰样板，并在其适当位置焊上能保证浇铸时引导金属液体顺利灌入的水口棒，作为浇铸用样板。在某些情况下，也采用浮雕的技法直接用', '255', '1', '0', '0', '0', '3', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:22:36', ' 2022-03-03 12:39:02', '4', '0', '' ),
 ('9', 'cn', '11', '', '春天到来，您的搭配饰品选好了吗？', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:22:38', '/static/upload/image/20190928/1569662579864752.jpg', '', '&lt;p&gt;阳春三月、又到一年开工季，又到鲜花浪漫时，您到底有多美！定制自己喜欢的款式，每天可以把自己打扮的美美哒，活出自己的风格、而润培饰品工厂所生产的饰品满足您的需求、有项链、耳环、戒指、手链、胸针、脚链、这些饰品都是我们生活中不可缺席的。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;春天常常带给人们一种心旷神怡的感觉，润培饰品工厂生产的精美饰品同样给人带了美好的心情首饰做为一种装饰品，早已被越来越多的人所喜爱，随着网络科技时代的不断传播，润培饰品无论是在款式上还是质量都已得到国内外客户的认可！不管是聚会还是出席晚宴，饰品都能让您受到大家的关注，成为焦点。&lt;/p&gt;WanWeiZhan.Com ', '站长宝贝网,AdminBaby.Com,快模板,KuaiMoBan.Com,环球数据,GloIDC.Com,PB模板网,pbmo.cn,pb牛X网,pbnx.cn,比特模板btmb.cn,万能PB,wnpb.cn,模板排行,mbph.cn,助力网站,ZLwz.Com', '', '', '阳春三月、又到一年开工季，又到鲜花浪漫时，您到底有多美！定制自己喜欢的款式，每天可以把自己打扮的美美哒，活出自己的风格、而润培饰品工厂所生产的饰品满足您的需求、有项链、耳环、戒指、手链、胸针、脚链、这些饰品都是我们生活中不可缺席的。春天常常带给人们一种心旷神怡的感觉，润培饰品工厂生产的精美饰品同样给', '255', '1', '0', '0', '0', '0', '0','0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:23:00', ' 2022-03-03 12:38:55', '4', '0', ''),
 ('10', 'cn', '12', '', '如何辨别仿造珍珠手链？', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:23:02', '/static/upload/image/20190928/1569662599770449.jpg', '', '&lt;p&gt;珍珠手链饰品一直以来都深受广大消费者的喜爱，因为珍珠手链饰品佩戴起来的效果要比其它的手链饰品好，所以现在的饰品的种类是越来越多，一些比较精致而又好看都是非常受消费者的喜爱，但不是说全部的珍珠手链质量都是好的。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;现在的仿造工艺如何的高超，在一些细节的方面还是无法超越，始终是具有不同的性质。就像是仿造的珍珠和真品的珍珠。仿珍珠手链定制有采用仿造性质的，也有采用真品的珍珠进行打造，这两者在真正的价值意义上肯定不同，不过那些仿造的珍珠饰品好像更具有市场空间。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;关于仿造珍珠和真品珍珠可以从他的光泽度来分辨。真品珍珠光泽从各个角度观察都是一样，放大观察可见到小台阶状的平面，而仿造珍珠往往采用独特生产工艺，保证无光泽不正，不平滑，色斑等瑕疵出现，这个光泽是不太一样的，真品珍珠有的样式，是仿造珍珠极力要模仿的，也是同时仿造珍珠也有自己的特色。&lt;/p&gt;WanWeiZhan.Com ', '', '', '', '珍珠手链饰品一直以来都深受广大消费者的喜爱，因为珍珠手链饰品佩戴起来的效果要比其它的手链饰品好，所以现在的饰品的种类是越来越多，一些比较精致而又好看都是非常受消费者的喜爱，但不是说全部的珍珠手链质量都是好的。现在的仿造工艺如何的高超，在一些细节的方面还是无法超越，始终是具有不同的性质。就像是仿造的珍', '255', '1', '0', '0', '0', '4', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:23:20', ' 2022-03-03 12:38:46', '4', '0', ''),
 ('11', 'cn', '12', '', '佩戴珍珠首饰的禁忌，千万注意', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:23:22', '/static/upload/image/20190928/1569662623969815.jpg', '', '&lt;p&gt;如今是21世纪，人们的生活越来越好，经济条件也是越来越好，所以现在人们也有条件对事物不断的提高要求，对于一些比较精致而又好看的产品都非常受消费者的目光，特别是现在的首饰，因为现在大部分的人身上都会有几件首饰以上的，当然首饰的种类也是越来越多，但是我们在戴首饰时，也要注意保养这样它的使用寿命才会更加长，那么当我们佩戴珍珠首饰要注意什么 如下：&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;一、忌水&lt;/p&gt;&lt;p&gt;虽然珍珠和水有着密不可分的联系，可是珍珠首饰是怕水的，所以不论是游水、洗澡或许运动，都不要佩带珍珠首饰，由于水分如果渗透到珍珠首饰中会引起珍珠珠层的脱离，危害珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;二、忌闷&lt;/p&gt;&lt;p&gt;珍珠首饰怕闷，所以珍珠首饰不能够长时间放置在密封的首饰盒里，即使不佩带也要定时让珍珠首饰透透气，避免珍珠变黄。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;三、忌污&lt;/p&gt;&lt;p&gt;珍珠首饰特别怕酸碱，所以主张朋友们不要佩带珍珠首饰下厨房，也不要佩带珍珠首饰化装，千万不要让珍珠首饰触摸香水、指甲油。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;四、忌刮&lt;/p&gt;&lt;p&gt;珍珠是比较软，它不像我们平常戴的金、银首饰一样，所以珍珠首饰怕硬，千万不要让珍珠首饰和一些尖锐的物体放置在一起，以免产生刮痕。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;五、忌热&lt;/p&gt;&lt;p&gt;珍珠首饰讨厌的就是热，因为温度过于太过热的话就会让，加速珍珠珠质的分解，所以千万不要暴晒你的珍珠首饰，存放的时候也要用干净的软布包裹珍珠首饰。&lt;/p&gt;WanWeiZhan.Com ', '我的PB模板网,5moban.com,八戒站长,BaJieZhan.com,撸站,pcLz.com,模板站网,mbzw.com,快云云,KuaiYunYun.com,云云安,YunYunAn.Com,新目录导航,XinMuLu.Com,易优模板网,XinYunZhan.COM', '', '', '如今是21世纪，人们的生活越来越好，经济条件也是越来越好，所以现在人们也有条件对事物不断的提高要求，对于一些比较精致而又好看的产品都非常受消费者的目光，特别是现在的首饰，因为现在大部分的人身上都会有几件首饰以上的，当然首饰的种类也是越来越多，但是我们在戴首饰时，也要注意保养这样它的使用寿命才会更加长，', '255', '1', '0', '0', '0', '2', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:23:44', ' 2022-03-03 12:38:38', '4', '0', ''),
 ('12', 'cn', '8', '', '百搭复古女项链气质简约几何D形吊坠', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:25:05', '/static/upload/image/20190928/1569662710139079.jpg', '/static/upload/image/20190928/1569662710139079.jpg,/static/upload/image/20190928/1569662712633280.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;KaiFaTang.Com', '', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '2', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:25:13', ' 2022-03-03 11:23:42', '4', '0', ''),
 ('13', 'cn', '10', '', '复古铜手镯D字手环', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:25:15', '/static/upload/image/20190928/1569662757746559.jpg', '/static/upload/image/20190928/1569662757746559.jpg,/static/upload/image/20190928/1569662760554717.jpg,/static/upload/image/20190928/1569662762601332.jpg,/static/upload/image/20190928/1569662764156513.jpg,/static/upload/image/20190928/1569662765877945.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;KaiFaTang.Com', '我的PB模板网,5moban.com,八戒站长,BaJieZhan.com,撸站,pcLz.com,模板站网,mbzw.com,快云云,KuaiYunYun.com,云云安,YunYunAn.Com,新目录导航,XinMuLu.Com,易优模板网,XinYunZhan.COM', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '3', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:26:06', ' 2022-03-03 11:23:17', '4', '0', ''),
 ('14', 'cn', '9', '', '复古耳环女百搭时尚个性耳钉', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:26:08', '/static/upload/image/20190928/1569662822950683.jpg', '/static/upload/image/20190928/1569662822950683.jpg,/static/upload/image/20190928/1569662824359805.jpg,/static/upload/image/20190928/1569662826558841.jpg,/static/upload/image/20190928/1569662828968071.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;KaiFaTang.Com', '', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '1', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:27:08', ' 2022-03-03 11:22:56', '4', '0', ''),
 ('15', 'cn', '9', '', '欧美时尚耳环日韩气质长款吊坠复古耳钉', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:27:11', '/static/upload/image/20190928/1569662854516746.jpg', '/static/upload/image/20190928/1569662854516746.jpg,/static/upload/image/20190928/1569662856826431.jpg,/static/upload/image/20190928/1569662858586137.jpg,/static/upload/image/20190928/1569662860433159.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;KaiFaTang.Com', '我的PB模板网,5moban.com,八戒站长,BaJieZhan.com,撸站,pcLz.com,模板站网,mbzw.com,快云云,KuaiYunYun.com,云云安,YunYunAn.Com,新目录导航,XinMuLu.Com,易优模板网,XinYunZhan.COM', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '1', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:27:40', ' 2022-03-03 11:22:27', '4', '0', ''),
 ('16', 'cn', '8', '', '复古项链女时尚简约百搭男女项链', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:27:42', '/static/upload/image/20190928/1569662897601229.jpg', '/static/upload/image/20190928/1569662897601229.jpg,/static/upload/image/20190928/1569662899453058.jpg,/static/upload/image/20190928/1569662901406318.jpg,/static/upload/image/20190928/1569662902931538.jpg,/static/upload/image/20190928/1569662904504287.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;KaiFaTang.Com', '', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '1', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:28:24', ' 2022-03-03 11:22:02', '4', '0', ''),
 ('17', 'cn', '8', '', '百搭复古女项链气质简约几何D形吊坠', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:28:27', '/static/upload/image/20190928/1569662939216886.jpg', '/static/upload/image/20190928/1569662939216886.jpg,/static/upload/image/20190928/1569662942336431.jpg,/static/upload/image/20190928/1569662943677325.jpg,/static/upload/image/20190928/1569662945746405.jpg,/static/upload/image/20190928/1569662947700342.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;KaiFaTang.Com', '我的PB模板网,5moban.com,八戒站长,BaJieZhan.com,撸站,pcLz.com,模板站网,mbzw.com,快云云,KuaiYunYun.com,云云安,YunYunAn.Com,新目录导航,XinMuLu.Com,易优模板网,XinYunZhan.COM', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '1', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:29:07', ' 2022-03-03 11:21:38', '4', '0', ''),
 ('18', 'cn', '8', '', '复古项链长款百搭时尚项链', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:29:09', '/static/upload/image/20190928/1569662991497771.jpg', '/static/upload/image/20190928/1569662991497771.jpg,/static/upload/image/20190928/1569662993910755.jpg,/static/upload/image/20190928/1569662995481288.jpg,/static/upload/image/20190928/1569662996247042.jpg,/static/upload/image/20190928/1569662998135339.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;KaiFaTang.Com', '', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '1', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:29:58', ' 2022-03-03 11:21:12', '4', '0', ''),
 ('19', 'cn', '8', '', '简约方形百搭项链复古个性时尚吊坠', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:30:00', '/static/upload/image/20190928/1569663026996858.jpg', '/static/upload/image/20190928/1569663026996858.jpg,/static/upload/image/20190928/1569663030332087.jpg,/static/upload/image/20190928/1569663031476268.jpg,/static/upload/image/20190928/1569663032218703.jpg,/static/upload/image/20190928/1569663034833390.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;BaJieZhan.Com', '', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '2', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:30:35', ' 2022-03-03 11:20:44', '4', '0', ''),
 ('20', 'cn', '8', '', '欧美时尚百搭项链简约方形复古毛衣链', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:30:38', '/static/upload/image/20190928/1569663065678106.jpg', '/static/upload/image/20190928/1569663065678106.jpg,/static/upload/image/20190928/1569663067488161.jpg,/static/upload/image/20190928/1569663070495134.jpg,/static/upload/image/20190928/1569663071811246.jpg,/static/upload/image/20190928/1569663073339109.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;BaJieZhan.Com', '我的PB模板网,5moban.com,八戒站长,BaJieZhan.com,撸站,pcLz.com,模板站网,mbzw.com,快云云,KuaiYunYun.com,云云安,YunYunAn.Com,新目录导航,XinMuLu.Com,易优模板网,XinYunZhan.COM', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '3', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:31:14', ' 2022-03-03 11:20:23', '4', '0', ''),
 ('21', 'cn', '8', '', '时尚创意复古项链简约百搭中国风女项链', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:31:16', '/static/upload/image/20190928/1569663107110253.jpg', '/static/upload/image/20190928/1569663107110253.jpg,/static/upload/image/20190928/1569663113370732.jpg,/static/upload/image/20190928/1569663115457775.jpg,/static/upload/image/20190928/1569663116588672.jpg,/static/upload/image/20190928/1569663117374648.jpg', '&lt;p style=&quot;white-space: normal;&quot;&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;BaJieZhan.Com', '', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '1', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:31:59', ' 2022-03-03 11:19:59', '4', '0', ''),
 ('22', 'cn', '8', '', '长款百搭民族风项链简约大气复古项链', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:32:01', '/static/upload/image/20190928/1569663147228277.jpg', '/static/upload/image/20190928/1569663147228277.jpg,/static/upload/image/20190928/1569663149287333.jpg,/static/upload/image/20190928/1569663151372536.jpg,/static/upload/image/20190928/1569663152782336.jpg,/static/upload/image/20190928/1569663154931803.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;BaJieZhan.Com', '我的PB模板网,5moban.com,八戒站长,BaJieZhan.com,撸站,pcLz.com,模板站网,mbzw.com,快云云,KuaiYunYun.com,云云安,YunYunAn.Com,新目录导航,XinMuLu.Com,易优模板网,XinYunZhan.COM', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '11', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:32:35', ' 2022-03-03 11:19:33', '4', '0', ''),
 ('23', 'cn', '8', '', '长款百搭时尚项链气质简约吊坠复古项链', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2019-09-28 17:32:37', '/static/upload/image/20190928/1569663184725533.jpg', '/static/upload/image/20190928/1569663184725533.jpg,/static/upload/image/20190928/1569663187908032.jpg,/static/upload/image/20190928/1569663188209241.jpg,/static/upload/image/20190928/1569663190519387.jpg,/static/upload/image/20190928/1569663191830567.jpg', '&lt;p&gt;宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb();&quot;&gt;&lt;/span&gt;物以稀为贵，世上极为稀少的祖母绿宝石，上等质量者每克拉（0.2克）价值上万美元，而某些颇美丽又可耐“久”的宝石（如紫晶），由于产量较多，开采较容易，其价格一直较低。某些常见的岩石，经琢磨后也具美观耐久的特点，但却不能成为宝石大家庭中的一员，其原因就是物易得必贱。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;由于宝石的价值高，人们必然期望它能够经久耐用，可保值甚至世袭的物品。钻石之所以成为最昂贵的宝石，其中一个原因就是它是世界上最硬、又不怕腐蚀的宝石，故世上价值较高的宝石多为一些硬度大、耐腐蚀的硅酸盐矿物（如翡翠）、少数氧化物（如红宝石、蓝宝石）及单质矿物（如钻石），而质软、易受腐蚀的宝石（如岫玉、南方玉等）本身价值较低，常用于制作工艺品，以工取胜；但也有少数宝石不在此列，如欧泊、珍珠。&lt;/p&gt;BaJieZhan.Com', '', '', '', '宝石如果不美就不能成为宝石，这种美或表现为绚丽的颜色，或表现为透明而洁净，或具特殊的光学效应（如猫眼、变彩、夜光等现象），或具特殊的图案（如菊花石、玛瑙、梅花玉等）。例如同为金刚石，透明少瑕者可用来琢磨成名贵的钻石，而透明度差、多瑕、色黑者则只能用作工业原料。物以稀为贵，世上极为稀少的祖母绿宝石，上', '255', '1', '0', '0', '0', '16', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2019-09-28 17:33:12', ' 2022-03-03 10:50:40', '4', '0', ''),
 ('24', 'cn', '1', '', '关于我们', '#333333', '', '', '万维站长网', 'WanWeiZhan.Com ', '', '2022-03-03 10:32:49', '', '', '', '', '', '', '', '255', '1', '0', '0', '0', '11', '0', '0', 'EluBaBa.Com', 'AdminBaby.Com', '2022-03-03 10:32:49', '2022-03-03 10:32:49', '4', '0', '');

-- 表：ay_content_ext
DROP TABLE IF EXISTS `ay_content_ext`;
CREATE TABLE `ay_content_ext` (
  `extid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentid` int(10) unsigned NOT NULL,
  `ext_jiage` varchar(200) DEFAULT NULL COMMENT '产品价格',
  `ext_kuanshi` varchar(200) DEFAULT NULL COMMENT '款式',
  `ext_dizhi` varchar(100) DEFAULT NULL COMMENT '地址',
  `ext_gongyi` varchar(100) DEFAULT NULL COMMENT '工艺',
   PRIMARY KEY (`extid`),
    KEY `ay_content_ext_contentid` (`contentid`),
    KEY ay_content_ext_jiage_index (`ext_jiage`),
	  KEY ay_content_ext_dizhi_index (`ext_dizhi`),
    KEY ay_content_ext_gongyi_index (`ext_gongyi`),
    KEY ay_content_ext_kuanshi_index (`ext_kuanshi`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `ay_content_ext` (`extid`,`contentid`,`ext_kuanshi`,`ext_gongyi`,`ext_jiage`,`ext_dizhi`) VALUES
 ('1', '41', 'X201', '黄金品质、紧致工艺', '2999', 'http://www.WanWeiZhan.Com'),
 ('2', '40', 'X202', '黄金品质、紧致工艺', '2988', 'http://www.WanWeiZhan.Com'),
 ('3', '39', 'X201', '黄金品质、紧致工艺', '3999', 'http://www.WanWeiZhan.Com'),
 ('4', '38', 'X201', '黄金品质、紧致工艺', '1999', 'http://www.WanWeiZhan.Com'),
 ('5', '37', 'X201', '黄金品质、紧致工艺', '3555', 'http://www.WanWeiZhan.Com'),
 ('6', '36', 'X201', '黄金品质、紧致工艺', '2888', 'http://www.WanWeiZhan.Com'),
 ('7', '35', 'X30', '黄金品质、紧致工艺', '1895', 'http://www.WanWeiZhan.Com'),
 ('8', '34', 'X5f', '黄金品质、紧致工艺', '888', 'http://www.WanWeiZhan.Com'),
 ('9', '33', 'X89', '黄金品质、紧致工艺', '899', 'http://www.WanWeiZhan.Com'),
 ('10', '32', 'X201', '黄金品质、紧致工艺', '1999', 'http://www.WanWeiZhan.Com'),
 ('11', '31', 'X201', '黄金品质、紧致工艺', '1599', 'http://www.WanWeiZhan.Com'),
 ('12', '30', 'X888', '黄金品质、紧致工艺', '599', 'http://www.WanWeiZhan.Com');

-- 表：ay_content_sort
DROP TABLE IF EXISTS `ay_content_sort`;
CREATE TABLE `ay_content_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `mcode` varchar(20) NOT NULL COMMENT '内容模型编码',
  `pcode` varchar(20) NOT NULL COMMENT '父编码',
  `scode` varchar(20) NOT NULL COMMENT '分类编码',
  `name` varchar(100) NOT NULL COMMENT '分类名称',
  `listtpl` varchar(50) NOT NULL COMMENT '列表页模板',
  `contenttpl` varchar(50) NOT NULL COMMENT '内容页模板',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `outlink` varchar(100) NOT NULL COMMENT '转外链接',
  `subname` varchar(200) NOT NULL COMMENT '附加名称',
  `def1` varchar(1000) NOT NULL COMMENT '栏目描述1',
  `def2` varchar(1000) NOT NULL COMMENT '栏目描述2',
  `def3` varchar(1000) NOT NULL COMMENT '栏目描述3',
  `ico` varchar(100) NOT NULL COMMENT '分类缩略图',
  `pic` varchar(100) NOT NULL COMMENT '分类大图',
  `title` varchar(100) NOT NULL COMMENT 'seo标题',
  `keywords` varchar(200) NOT NULL COMMENT '分类关键字',
  `description` varchar(500) NOT NULL COMMENT '分类描述',
  `filename` varchar(30) NOT NULL COMMENT '自定义文件名',
  `sorting` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `gtype` char(1) NOT NULL DEFAULT '4',
  `gid` varchar(20) NOT NULL DEFAULT '',
  `gnote` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_content_sort_scode` (`scode`),
  KEY `ay_content_sort_pcode` (`pcode`),
  KEY `ay_content_sort_acode` (`acode`),
  KEY `ay_content_sort_mcode` (`mcode`),
  KEY `ay_content_sort_filename` (`filename`),
  KEY `ay_content_sort_sorting` (`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `ay_content_sort` (`id`,`acode`,`mcode`,`pcode`,`scode`,`name`,`listtpl`,`contenttpl`,`status`,`outlink`,`subname`,`ico`,`pic`,`title`,`keywords`,`description`,`filename`,`sorting`,`create_user`,`update_user`,`create_time`,`update_time`,`gtype`,`gid`,`gnote`,`def1`,`def2`,`def3`) VALUES
 ('12', 'cn', '1', '0', '1', '关于我们', '', 'about.html', '1', '', '', '', '/static/upload/image/20220303/微信图片_20230718172915.png', '关于我们', '', '', 'about', '255', 'hqchao', 'admin', '2019-09-28 16:47:12', ' 2022-03-03 10:36:23', '4', '0', '', '', '', ''),
 ('13', 'cn', '3', '0', '2', '藏品展示', 'productlist.html', 'product.html', '1', '', '', '', '/static/upload/image/20220303/微信图片_20230718172904.png', '藏品展示', '', '', 'product', '255', 'hqchao', 'admin', '2019-09-28 16:47:22', ' 2022-03-03 10:38:52', '4', '0', '', '', '', ''),
 ('15', 'cn', '2', '0', '4', '新闻中心', 'newslist.html', 'news.html', '1', '', '', '', '/static/upload/image/20220303/微信图片_20230718172919.png', '新闻中心', '', '', 'news', '255', 'hqchao', 'admin', '2019-09-28 16:48:12', ' 2022-03-03 11:27:47', '4', '0', '', '', '', ''),
 ('16', 'cn', '1', '0', '5', '联系我们', '', 'contact.html', '1', '', '', '', '/static/upload/image/20220303/1646278246984038.jpg', '联系我们', '', '', 'contact', '255', 'hqchao', 'admin', '2019-09-28 16:48:31', ' 2022-03-03 11:30:48', '4', '0', '', '', '', ''),
 ('17', 'cn', '1', '1', '6', '公司简介', '', 'about.html', '1', '', '', '', '', '公司简介', '', '', 'jianjie', '255', 'hqchao', 'admin', '2019-09-28 16:49:30', ' 2022-03-03 10:36:51', '4', '0', '', '', '', ''),
 ('18', 'cn', '1', '1', '7', '企业文化', '', 'about.html', '1', '', '', '/static/upload/image/20220303/1646275056676237.jpg', '', '企业文化', '', '', 'culture', '255', 'hqchao', 'admin', '2019-09-28 16:49:30', ' 2022-03-03 10:37:37', '4', '0', '', '', '', ''),
 ('19', 'cn', '3', '2', '8', '项链', 'productlist.html', 'product.html', '1', '', '', '', '', '项链', '', '', 'necklace', '255', 'hqchao', 'admin', '2019-09-28 16:50:12', ' 2022-03-03 10:40:31', '4', '0', '', '', '', ''),
 ('20', 'cn', '3', '2', '9', '耳饰', 'productlist.html', 'product.html', '1', '', '', '', '', '耳饰', '', '', 'earring', '255', 'hqchao', 'admin', '2019-09-28 16:50:12', ' 2022-03-03 10:40:41', '4', '0', '', '', '', ''),
 ('21', 'cn', '3', '2', '10', '手链', 'productlist.html', 'product.html', '1', '', '', '', '', '手链', '', '', 'bracelet', '255', 'hqchao', 'admin', '2019-09-28 16:50:12', ' 2022-03-03 10:41:05', '4', '0', '', '', '', ''),
 ('22', 'cn', '2', '4', '11', '新闻资讯', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', 'company-news', '255', 'hqchao', 'hqchao', '2019-09-28 16:50:24', ' 2019-09-28 16:51:21', '4', '', '', '', '', ''),
 ('23', 'cn', '2', '4', '12', '行业报道', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', 'industry-news', '255', 'hqchao', 'hqchao', '2019-09-28 16:50:24', ' 2019-09-28 16:51:27', '4', '', '', '', '', ''),
 ('24', 'cn', '1', '0', '13', '(首页)关于我们', '', 'about.html', '0', '', '', '', '', '', '', '', '', '255', 'hqchao', 'hqchao', '2019-09-28 16:54:25', '2019-09-28 16:54:25', '4', '', '', '', '', '');

-- 表：ay_extfield
DROP TABLE IF EXISTS `ay_extfield`;
CREATE TABLE `ay_extfield` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mcode` varchar(20) NOT NULL COMMENT '模型编码',
  `name` varchar(30) NOT NULL COMMENT '字段名称',
  `type` char(2) NOT NULL COMMENT '字段类型',
  `value` varchar(500) NOT NULL COMMENT '单选或多选值',
  `description` varchar(30) NOT NULL COMMENT '描述文本',
  `sorting` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `ay_extfield_mcode` (`mcode`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `ay_extfield` (`id`,`mcode`,`name`,`type`,`value`,`description`,`sorting`) VALUES
 ('1', '3', 'ext_kuanshi', '1', '', '款式', '255'),
-- 表：ay_form


DROP TABLE IF EXISTS `ay_form`;
CREATE TABLE `ay_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `fcode` varchar(20) NOT NULL COMMENT '表单编码',
  `form_name` varchar(30) NOT NULL COMMENT '表单名称',
  `table_name` varchar(30) NOT NULL COMMENT '表名称',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_form_fcode` (`fcode`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `ay_form` (`id`,`fcode`,`form_name`,`table_name`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('1','1','在线留言','ay_message','admin','admin','2018-04-11 17:31:29','2018-04-11 17:31:29'),
 ('2','2','搜集电话','ay_diy_telephone','admin','admin','2018-11-30 15:17:40','2018-11-30 15:17:40');

-- 表：ay_form_field
DROP TABLE IF EXISTS `ay_form_field`;
CREATE TABLE `ay_form_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `fcode` varchar(20) NOT NULL COMMENT '表单编码',
  `name` varchar(30) NOT NULL COMMENT '字段名称',
  `length` int(10) unsigned NOT NULL COMMENT '字段长度',
  `required` char(1) NOT NULL DEFAULT '0' COMMENT '是否必填',
  `description` varchar(30) NOT NULL COMMENT '描述文本',
  `sorting` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ay_form_field_fcode` (`fcode`),
  KEY `ay_form_field_sorting` (`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `ay_form_field` (`id`,`fcode`,`name`,`length`,`required`,`description`,`sorting`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('1', '1', 'contacts', 10, '1', '联系人', '255', 'admin', 'admin', '2018-07-14 18:24:02', '2018-07-15 17:47:43'),
 ('2', '1', 'mobile', 12, '1', '手机', '255', 'admin', 'admin', '2018-07-14 18:24:02', '2018-07-15 17:47:44'),
 ('3', '1', 'content', 500, '0', '内容', '255', 'admin', 'admin', '2018-07-14 18:24:02', ' 2022-03-03 11:33:16'),
 ('5', '1', 'email', 30, '0', '邮箱', '255', 'hqchao', 'admin', '2019-09-17 13:53:22', ' 2022-03-03 11:33:17');

-- 表：ay_label
DROP TABLE IF EXISTS `ay_label`;
CREATE TABLE `ay_label` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `value` varchar(500) NOT NULL COMMENT '值',
  `type` char(1) NOT NULL DEFAULT '1' COMMENT '字段类型',
  `description` varchar(30) NOT NULL COMMENT '描述',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(20) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- 表：ay_link
DROP TABLE IF EXISTS `ay_link`;
CREATE TABLE `ay_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `gid` int(10) unsigned NOT NULL COMMENT '分组序号',
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `link` varchar(100) NOT NULL COMMENT '跳转链接',
  `logo` varchar(100) NOT NULL COMMENT '图片地址',
  `sorting` int(11) NOT NULL COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `ay_link_acode` (`acode`),
  KEY `ay_link_gid` (`gid`),
  KEY `ay_link_sorting` (`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 表：ay_member 
DROP TABLE IF EXISTS `ay_member`;
CREATE TABLE `ay_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucode` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(50) NOT NULL DEFAULT '',
  `usermobile` varchar(11) NOT NULL DEFAULT '',
  `nickname` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `status` char(1) NOT NULL,
  `activation` char(1) NOT NULL DEFAULT '1',
  `gid` varchar(20) NOT NULL,
  `wxid` varchar(50) NOT NULL,
  `qqid` varchar(50) NOT NULL,
  `wbid` varchar(50) NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `register_time` datetime NOT NULL,
  `login_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` varchar(11) NOT NULL,
  `last_login_time` varchar(11) NOT NULL,
  `sex` varchar(2) NOT NULL DEFAULT '',
  `birthday` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_member_ucode` (`ucode`),
  UNIQUE KEY `ay_member_username` (`username`),
  KEY `ay_member_gid` (`gid`),
  KEY `ay_member_wxid` (`wxid`),
  KEY `ay_member_qqid` (`qqid`),
  KEY `ay_member_wbid` (`wbid`),
  KEY `ay_member_useremail` (`useremail`),
  KEY `ay_member_usermobile` (`usermobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 表：ay_member_comment
DROP TABLE IF EXISTS `ay_member_comment`;
CREATE TABLE `ay_member_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `contentid` int(10) unsigned NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `puid` int(10) unsigned NOT NULL,
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `oppose` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL,
  `user_ip` varchar(11) NOT NULL,
  `user_os` varchar(30) NOT NULL,
  `user_bs` varchar(30) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_user` varchar(30) NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ay_member_comment_pid` (`pid`),
  KEY `ay_member_comment_contentid` (`contentid`),
  KEY `ay_member_comment_uid` (`uid`),
  KEY `ay_member_comment_puid` (`puid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 表：ay_member_field
DROP TABLE IF EXISTS `ay_member_field`;
CREATE TABLE `ay_member_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `length` int(10) unsigned NOT NULL,
  `required` char(1) NOT NULL,
  `description` varchar(30) NOT NULL,
  `sorting` int(10) unsigned NOT NULL,
  `status` char(1) NOT NULL,
  `create_user` varchar(30) NOT NULL,
  `update_user` varchar(30) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `ay_member_field` (`id`,`name`,`length`,`required`,`description`,`sorting`,`status`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('1', 'sex', '2', '0', '性别', '255', '1', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00'),
 ('2', 'birthday', '20', '0', '生日', '255', '1', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00'),
 ('3', 'qq', '15', '0', 'QQ', '255', '1', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00');

-- 表：ay_member_group
DROP TABLE IF EXISTS `ay_member_group`;
CREATE TABLE `ay_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gcode` varchar(20) NOT NULL,
  `gname` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `lscore` int(10) unsigned NOT NULL DEFAULT '0',
  `uscore` int(10) unsigned NOT NULL DEFAULT '0',
  `create_user` varchar(30) NOT NULL,
  `update_user` varchar(30) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_member_group_gcode` (`gcode`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `ay_member_group` (`id`,`gcode`,`gname`,`description`,`status`,`lscore`,`uscore`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('1', '1', '初级会员', '初级会员具备基本的权限', '1', '0', '999', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00'),
 ('2', '2', '中级会员', '中级会员具备部分特殊权限', '1', '1000', '9999', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00'),
 ('3', '3', '高级会员', '高级会员具备全部特殊权限', '1', '10000', '9999999999', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00');

-- 表：ay_menu
DROP TABLE IF EXISTS `ay_menu`;
CREATE TABLE `ay_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `mcode` varchar(20) NOT NULL COMMENT '菜单编码',
  `pcode` varchar(20) NOT NULL COMMENT '上级菜单',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `url` varchar(100) NOT NULL COMMENT '菜单地址',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '菜单排序',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `shortcut` char(1) NOT NULL DEFAULT '0' COMMENT '桌面图标',
  `ico` varchar(30) NOT NULL COMMENT '菜单图标',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_menu_mcode` (`mcode`),
  KEY `ay_menu_pcode` (`pcode`),
  KEY `ay_menu_sorting` (`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
INSERT INTO `ay_menu` (`id`,`mcode`,`pcode`,`name`,`url`,`sorting`,`status`,`shortcut`,`ico`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('1', 'M101', '0', '系统管理', '/admin/M101/index', '900', '1', '0', 'fa-cog', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:52:57'),
 ('2', 'M102', 'M101', '数据区域', '/admin/Area/index', '901', '1', '1', 'fa-sitemap', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:54:23'),
 ('3', 'M103', 'M101', '系统菜单', '/admin/Menu/index', '902', '0', '0', 'fa-bars', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:54:35'),
 ('4', 'M104', 'M101', '系统角色', '/admin/Role/index', '903', '1', '1', 'fa-hand-stop-o', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:54:43'),
 ('5', 'M105', 'M101', '系统用户', '/admin/User/index', '904', '1', '1', 'fa-users', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:54:51'),
 ('6', 'M106', 'M101', '系统日志', '/admin/Syslog/index', '905', '1', '1', 'fa-history', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:55:00'),
 ('7', 'M107', 'M101', '类型管理', '/admin/Type/index', '906', '0', '0', 'fa-tags', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:55:13'),
 ('8', 'M108', 'M101', '数据库管理', '/admin/Database/index', '907', '1', '1', 'fa-database', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:55:24'),
 ('9', 'M109', 'M101', '服务器信息', '/admin/Site/server', '908', '1', '1', 'fa-info-circle', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:55:34'),
 ('10', 'M110', '0', '基础内容', '/admin/M110/index', '300', '1', '0', 'fa-sliders', 'admin', 'admin', '2017-11-28 11:13:05', '2018-04-30 14:48:29'),
 ('11', 'M111', 'M110', '站点信息', '/admin/Site/index', '301', '1', '1', 'fa-cog', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-07 18:45:57'),
 ('12', 'M112', 'M110', '公司信息', '/admin/Company/index', '302', '1', '1', 'fa-copyright', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-07 18:46:09'),
 ('29', 'M129', 'M110', '内容栏目', '/admin/ContentSort/index', '303', '1', '1', 'fa-bars', 'admin', 'admin', '2017-12-26 10:42:40', '2018-04-07 18:46:25'),
 ('30', 'M130', '0', '文章内容', '/admin/M130/index', '400', '1', '0', 'fa-file-text-o', 'admin', 'admin', '2017-12-26 10:45:36', '2018-04-30 14:49:47'),
 ('31', 'M131', 'M130', '单页内容', '/admin/Single/index', '401', '0', '0', 'fa-file-o', 'admin', 'admin', '2017-12-26 10:46:35', '2018-04-07 18:46:35'),
 ('32', 'M132', 'M130', '列表内容', '/admin/Content/index', '402', '0', '0', 'fa-file-text-o', 'admin', 'admin', '2017-12-26 10:48:17', '2018-04-07 21:52:15'),
 ('36', 'M136', 'M156', '定制标签', '/admin/Label/index', '203', '1', '1', 'fa-wrench', 'admin', 'admin', '2018-01-03 11:52:40', '2018-04-07 18:44:31'),
 ('50', 'M150', 'M157', '留言信息', '/admin/Message/index', '501', '1', '1', 'fa-question-circle-o', 'admin', 'admin', '2018-02-01 13:20:17', '2018-07-07 23:45:09'),
 ('51', 'M151', 'M157', '轮播图片', '/admin/Slide/index', '502', '1', '1', 'fa-picture-o', 'admin', 'admin', '2018-03-01 14:57:41', '2018-04-07 18:47:07'),
 ('52', 'M152', 'M157', '友情链接', '/admin/Link/index', '503', '1', '1', 'fa-link', 'admin', 'admin', '2018-03-01 14:58:45', '2018-04-07 18:47:16'),
 ('53', 'M153', 'M156', '配置参数', '/admin/Config/index', '201', '1', '1', 'fa-sliders', 'admin', 'admin', '2018-03-21 14:52:05', '2018-04-07 18:44:02'),
 ('55', 'M155', 'M156', '模型管理', '/admin/Model/index', '204', '1', '1', 'fa-codepen', 'admin', 'admin', '2018-03-25 17:16:06', '2018-04-07 18:44:40'),
 ('56', 'M156', '0', '全局配置', '/admin/M156/index', '200', '1', '0', 'fa-globe', 'admin', 'admin', '2018-03-25 17:20:43', '2018-04-30 14:43:56'),
 ('57', 'M157', '0', '扩展内容', '/admin/M157/index', '500', '1', '0', 'fa-arrows-alt', 'admin', 'admin', '2018-03-25 17:27:57', '2018-04-30 14:50:34'),
 ('58', 'M158', 'M156', '模型字段', '/admin/ExtField/index', '205', '1', '1', 'fa-external-link', 'admin', 'admin', '2018-03-25 21:24:43', '2018-04-07 18:44:49'),
 ('60', 'M160', 'M157', '自定义表单', '/admin/Form/index', '504', '1', '1', 'fa-plus-square-o', 'admin', 'admin', '2018-05-30 18:25:41', '2018-05-31 23:55:10'),
 ('61', 'M1000', 'M157', '文章内链', '/admin/Tags/index', '505', '1', '0', 'fa-random', 'admin', 'admin', '2019-07-12 08:25:41', '2019-07-12 08:26:23'),
 ('62', 'M1001', '0', '会员中心', '/admin/M1001/index', '600', '1', '0', 'fa-user-o', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23'),
 ('63', 'M1002', 'M1001', '会员等级', '/admin/MemberGroup/index', '601', '1', '0', 'fa-signal', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23'),
 ('64', 'M1003', 'M1001', '会员字段', '/admin/MemberField/index', '602', '1', '0', 'fa-wpforms', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23'),
 ('65', 'M1004', 'M1001', '会员管理', '/admin/Member/index', '603', '1', '0', 'fa-users', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23'),
 ('66', 'M1005', 'M1001', '文章评论', '/admin/MemberComment/index', '604', '1', '0', 'fa-commenting-o', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23'),
 ('71', 'M161', '0', '技术支持', '/admin/M161/index', '255', '1', '1', 'fa-link', 'admin', 'admin', '2022-03-24 10:59:11', '2022-03-24 10:59:11'),
 ('72', 'M162', 'M161', '模板下载', 'http://www.5moban.com', '255', '1', '1', 'fa-sliders', 'admin', 'admin', '2022-03-24 10:59:28', ' 2022-06-01 15:00:58'),
 ('74', 'M164', 'M161', 'QQ：43171398', 'http://wpa.qq.com/msgrd?v=3&amp;uin=43171398&amp;site=qq&amp;menu=yes', '255', '1', '1', 'fa-sliders', 'admin', 'admin', '2022-03-24 11:00:24', ' 2022-06-01 15:01:22');

-- 表：ay_menu_action
DROP TABLE IF EXISTS `ay_menu_action`;
CREATE TABLE `ay_menu_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mcode` varchar(20) NOT NULL COMMENT '菜单编码',
  `action` varchar(20) NOT NULL COMMENT '类型编码',
  PRIMARY KEY (`id`),
  KEY `ay_menu_action_mcode` (`mcode`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
INSERT INTO `ay_menu_action` (`id`,`mcode`,`action`) VALUES
  ('1','M102','mod'),
  ('2','M102','del'),
  ('3','M102','add'),
  ('4','M103','mod'),
  ('5','M103','del'),
  ('6','M103','add'),
  ('7','M104','mod'),
  ('8','M104','del'),
  ('9','M104','add'),
  ('10','M105','mod'),
  ('11','M105','del'),
  ('12','M105','add'),
  ('13','M107','mod'),
  ('14','M107','del'),
  ('15','M107','add'),
  ('16','M111','mod'),
  ('17','M112','mod'),
  ('18','M114','mod'),
  ('19','M114','del'),
  ('20','M114','add'),
  ('21','M120','mod'),
  ('22','M120','del'),
  ('23','M120','add'),
  ('24','M129','mod'),
  ('25','M129','del'),
  ('26','M129','add'),
  ('27','M131','mod'),
  ('28','M132','mod'),
  ('29','M132','del'),
  ('30','M132','add'),
  ('31','M136','mod'),
  ('32','M136','del'),
  ('33','M136','add'),
  ('34','M141','mod'),
  ('35','M141','del'),
  ('36','M141','add'),
  ('37','M142','mod'),
  ('38','M142','del'),
  ('39','M142','add'),
  ('40','M143','mod'),
  ('41','M143','del'),
  ('42','M143','add'),
  ('43','M144','mod'),
  ('44','M144','del'),
  ('45','M144','add'),
  ('46','M145','mod'),
  ('47','M145','del'),
  ('48','M145','add'),
  ('49','M150','del'),
  ('50','M150','mod'),
  ('51','M151','mod'),
  ('52','M151','del'),
  ('53','M151','add'),
  ('54','M152','mod'),
  ('55','M152','del'),
  ('56','M152','add'),
  ('57','M155','mod'),
  ('58','M155','del'),
  ('59','M155','add'),
  ('60','M158','mod'),
  ('61','M158','del'),
  ('62','M158','add'),
  ('63','M160','add'),
  ('64','M160','del'),
  ('65','M160','mod'),
  ('66','M1000','add'),
  ('67','M1000','del'),
  ('68','M1000','mod'),
  ('69','M1002','add'),
  ('70','M1002','del'),
  ('71','M1002','mod'),
  ('72','M1003','add'),
  ('73','M1003','del'),
  ('74','M1003','mod'),
  ('75','M1004','add'),
  ('76','M1004','del'),
  ('77','M1004','mod'),
  ('78','M1005','del');

-- 表：ay_message
DROP TABLE IF EXISTS `ay_message`;
CREATE TABLE `ay_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `contacts` varchar(10) DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(12) DEFAULT NULL COMMENT '联系电话',
  `content` varchar(500) DEFAULT NULL COMMENT '留言内容',
  `user_ip` varchar(11) NOT NULL DEFAULT '0' COMMENT 'IP地址',
  `user_os` varchar(30) NOT NULL COMMENT '操作系统',
  `user_bs` varchar(30) NOT NULL COMMENT '浏览器',
  `recontent` varchar(500) NOT NULL COMMENT '回复内容',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '是否前台显示',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ay_message_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 表：ay_model
DROP TABLE IF EXISTS `ay_model`;
CREATE TABLE `ay_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `mcode` varchar(20) NOT NULL COMMENT '模型编号',
  `name` varchar(50) NOT NULL COMMENT '模型名称',
  `type` char(1) NOT NULL DEFAULT '2' COMMENT '是否列表类型',
  `urlname` varchar(100) NOT NULL DEFAULT '' COMMENT 'URL名称',
  `listtpl` varchar(50) NOT NULL COMMENT '列表页模板',
  `contenttpl` varchar(50) NOT NULL COMMENT '内容页模板',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '模型状态',
  `issystem` char(1) NOT NULL DEFAULT '0' COMMENT '系统模型',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_model_mcode` (`mcode`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
INSERT INTO `ay_model` (`id`,`mcode`,`name`,`type`,`urlname`,`listtpl`,`contenttpl`,`status`,`issystem`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('1', '1', '专题', '1', 'pages', '', 'about.html', '1', '1', 'admin', 'admin', '2018-04-11 17:16:01', '2019-08-05 11:11:44'),
 ('2', '2', '新闻', '2', 'list', 'newslist.html', 'news.html', '1', '1', 'admin', 'admin', '2018-04-11 17:17:16', ' 2022-03-03 10:30:39'),
 ('3', '3', '藏品', '2', 'list', 'productlist.html', 'product.html', '1', '0', 'admin', 'admin', '2018-04-11 17:17:46', ' 2022-03-03 10:30:46'),

-- 表：ay_role
DROP TABLE IF EXISTS `ay_role`;
CREATE TABLE `ay_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `rcode` varchar(20) NOT NULL COMMENT '角色编码',
  `name` varchar(30) NOT NULL COMMENT '角色名称',
  `description` varchar(50) NOT NULL COMMENT '角色描述',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_role_rcode` (`rcode`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `ay_role` (`id`,`rcode`,`name`,`description`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
  ('1', 'R101', '系统管理员', '系统管理员具有所有权限', 'admin', 'admin', '2017-03-22 11:33:32', '2019-08-05 11:22:02'),
  ('2', 'R102', '内容管理员', '内容管理员具有基本内容管理权限', 'admin', 'hqchao', '2017-06-01 00:32:02', ' 2019-09-28 17:21:51');

-- 表：ay_role_area
DROP TABLE IF EXISTS `ay_role_area`;
CREATE TABLE `ay_role_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rcode` varchar(20) NOT NULL,
  `acode` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ay_role_area_rcode` (`rcode`),
  KEY `ay_role_area_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `ay_role_area` (`id`,`rcode`,`acode`) VALUES

 ('3', 'R101', 'cn'),
 ('5', 'R102', 'cn');

-- 表：ay_role_level
DROP TABLE IF EXISTS `ay_role_level`;
CREATE TABLE `ay_role_level` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `rcode` varchar(20) NOT NULL COMMENT '角色编码',
  `level` varchar(50) NOT NULL COMMENT '权限地址',
  PRIMARY KEY (`id`),
  KEY `ay_role_level_rcode` (`rcode`)
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;
INSERT INTO `ay_role_level` (`id`,`rcode`,`level`) VALUES

 ('106', 'R101', '/admin/M156/index'),
 ('107', 'R101', '/admin/Config/index'),
 ('108', 'R101', '/admin/Label/index'),
 ('109', 'R101', '/admin/Label/add'),
 ('110', 'R101', '/admin/Label/del'),
 ('111', 'R101', '/admin/Label/mod'),
 ('112', 'R101', '/admin/Model/index'),
 ('113', 'R101', '/admin/Model/add'),
 ('114', 'R101', '/admin/Model/del'),
 ('115', 'R101', '/admin/Model/mod'),
 ('116', 'R101', '/admin/ExtField/index'),
 ('117', 'R101', '/admin/ExtField/add'),
 ('118', 'R101', '/admin/ExtField/del'),
 ('119', 'R101', '/admin/ExtField/mod'),
 ('120', 'R101', '/admin/M110/index'),
 ('121', 'R101', '/admin/Site/index'),
 ('122', 'R101', '/admin/Site/mod'),
 ('123', 'R101', '/admin/Company/index'),
 ('124', 'R101', '/admin/Company/mod'),
 ('125', 'R101', '/admin/ContentSort/index'),
 ('126', 'R101', '/admin/ContentSort/add'),
 ('127', 'R101', '/admin/ContentSort/del'),
 ('128', 'R101', '/admin/ContentSort/mod'),
 ('129', 'R101', '/admin/M130/index'),
 ('130', 'R101', '/admin/Single/index'),
 ('131', 'R101', '/admin/Single/mod'),
 ('132', 'R101', '/admin/Content/index'),
 ('133', 'R101', '/admin/Content/add'),
 ('134', 'R101', '/admin/Content/del'),
 ('135', 'R101', '/admin/Content/mod'),
 ('136', 'R101', '/admin/M157/index'),
 ('137', 'R101', '/admin/Message/index'),
 ('138', 'R101', '/admin/Message/del'),
 ('139', 'R101', '/admin/Message/mod'),
 ('140', 'R101', '/admin/Slide/index'),
 ('141', 'R101', '/admin/Slide/add'),
 ('142', 'R101', '/admin/Slide/del'),
 ('143', 'R101', '/admin/Slide/mod'),
 ('144', 'R101', '/admin/Link/index'),
 ('145', 'R101', '/admin/Link/add'),
 ('146', 'R101', '/admin/Link/del'),
 ('147', 'R101', '/admin/Link/mod'),
 ('148', 'R101', '/admin/Form/index'),
 ('149', 'R101', '/admin/Form/add'),
 ('150', 'R101', '/admin/Form/del'),
 ('151', 'R101', '/admin/Form/mod'),
 ('152', 'R101', '/admin/Tags/index'),
 ('153', 'R101', '/admin/Tags/add'),
 ('154', 'R101', '/admin/Tags/del'),
 ('155', 'R101', '/admin/Tags/mod'),
 ('156', 'R101', '/admin/M101/index'),
 ('157', 'R101', '/admin/Area/index'),
 ('158', 'R101', '/admin/Area/add'),
 ('159', 'R101', '/admin/Area/del'),
 ('160', 'R101', '/admin/Area/mod'),
 ('161', 'R101', '/admin/Menu/index'),
 ('162', 'R101', '/admin/Menu/add'),
 ('163', 'R101', '/admin/Menu/del'),
 ('164', 'R101', '/admin/Menu/mod'),
 ('165', 'R101', '/admin/Role/index'),
 ('166', 'R101', '/admin/Role/add'),
 ('167', 'R101', '/admin/Role/del'),
 ('168', 'R101', '/admin/Role/mod'),
 ('169', 'R101', '/admin/User/index'),
 ('170', 'R101', '/admin/User/add'),
 ('171', 'R101', '/admin/User/del'),
 ('172', 'R101', '/admin/User/mod'),
 ('173', 'R101', '/admin/Syslog/index'),
 ('174', 'R101', '/admin/Type/index'),
 ('175', 'R101', '/admin/Type/add'),
 ('176', 'R101', '/admin/Type/del'),
 ('177', 'R101', '/admin/Type/mod'),
 ('178', 'R101', '/admin/Database/index'),
 ('179', 'R101', '/admin/Site/server'),
 ('216', 'R102', '/admin/M110/index'),
 ('217', 'R102', '/admin/Site/index'),
 ('218', 'R102', '/admin/Site/mod'),
 ('219', 'R102', '/admin/Company/index'),
 ('220', 'R102', '/admin/Company/mod'),
 ('221', 'R102', '/admin/ContentSort/index'),
 ('222', 'R102', '/admin/ContentSort/add'),
 ('223', 'R102', '/admin/ContentSort/del'),
 ('224', 'R102', '/admin/ContentSort/mod'),
 ('225', 'R102', '/admin/M130/index'),
 ('226', 'R102', '/admin/Single/index'),
 ('227', 'R102', '/admin/Single/mod'),
 ('228', 'R102', '/admin/Content/index'),
 ('229', 'R102', '/admin/Content/add'),
 ('230', 'R102', '/admin/Content/del'),
 ('231', 'R102', '/admin/Content/mod'),
 ('232', 'R102', '/admin/M157/index'),
 ('233', 'R102', '/admin/Message/index'),
 ('234', 'R102', '/admin/Message/del'),
 ('235', 'R102', '/admin/Message/mod'),
 ('236', 'R102', '/admin/Slide/index'),
 ('237', 'R102', '/admin/Slide/add'),
 ('238', 'R102', '/admin/Slide/del'),
 ('239', 'R102', '/admin/Slide/mod');

-- 表：ay_site

DROP TABLE IF EXISTS `ay_site`;
CREATE TABLE `ay_site` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '站点编号',
  `acode` varchar(20) NOT NULL COMMENT '区域代码',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `subtitle` varchar(200) NOT NULL COMMENT '站点副标题',
  `domain` varchar(50) NOT NULL COMMENT '站点地址',
  `logo` varchar(100) NOT NULL COMMENT '站点LOGO地址',
  `keywords` varchar(200) NOT NULL COMMENT '站点关键字',
  `description` varchar(500) NOT NULL COMMENT '站点描述',
  `icp` varchar(30) NOT NULL COMMENT '站点备案',
  `theme` varchar(30) NOT NULL COMMENT '站点主题',
  `statistical` varchar(500) NOT NULL COMMENT '站点统计码',
  `copyright` varchar(200) NOT NULL COMMENT '版权信息',
  PRIMARY KEY (`id`),
  KEY `ay_site_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `ay_site` (`id`,`acode`,`title`,`subtitle`,`domain`,`logo`,`keywords`,`description`,`icp`,`theme`,`statistical`,`copyright`) VALUES
('1', 'cn', '今古意官网后台', '', 'http://test.wanweizhan.com', '/static/upload/image/20220303/1646278714830646.png', '', '', '皖ICP备PB6789.COM', 'default', '', '');

-- 表：ay_slide
DROP TABLE IF EXISTS `ay_slide`;
CREATE TABLE `ay_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `gid` int(10) unsigned NOT NULL COMMENT '分组序号',
  `pic` varchar(100) NOT NULL COMMENT '图片地址',
  `link` varchar(100) NOT NULL COMMENT '跳转链接',
  `title` varchar(50) NOT NULL COMMENT '说明文字',
  `subtitle` varchar(100) NOT NULL COMMENT '副标题/描述',
  `sorting` int(11) NOT NULL COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `ay_slide_acode` (`acode`),
  KEY `ay_slide_gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `ay_slide` (`id`,`acode`,`gid`,`pic`,`link`,`title`,`subtitle`,`sorting`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('3', 'cn', '1', '/static/upload/image/20220303/1646282067704044.jpg', 'http://www.5MoBan.Com', '', '', '1', 'hqchao', 'admin', '2019-09-17 13:53:40', ' 2022-06-01 14:59:56'),
 ('4', 'cn', '1', '/static/upload/image/20220303/1646282067704044.jpg', 'http://www.WanWeiZhan.Com', '', '',' 2', 'hqchao', 'admin', '2019-09-17 13:53:47', ' 2022-06-01 15:00:01'),
 ('5', 'cn', '1', '/static/upload/image/20220303/1646282067704044.jpg', 'http://www.BaJieZhan.Com', '', '', '3', 'hqchao', 'admin', '2019-09-17 13:53:53', ' 2022-06-01 15:00:07'),
 ('6', 'cn', '1', '/static/upload/image/20220303/1646282067704044.jpg', 'http://www.kuaimoban.com/', '', '', '4', 'hqchao', 'admin', '2019-09-28 16:52:04', ' 2022-06-01 15:00:15');

-- 表：ay_syslog
DROP TABLE IF EXISTS `ay_syslog`;
CREATE TABLE `ay_syslog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `level` varchar(20) NOT NULL COMMENT '信息等级',
  `event` varchar(200) NOT NULL COMMENT '事件',
  `user_ip` varchar(11) NOT NULL DEFAULT '0' COMMENT '客户端IP',
  `user_os` varchar(30) NOT NULL COMMENT '客户端系统',
  `user_bs` varchar(30) NOT NULL COMMENT '客户端浏览器',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `ay_syslog` (`id`, `level`, `event`, `user_ip`, `user_os`, `user_bs`, `create_user`, `create_time`)VALUES 
 ('242', 'info', '清理缓存成功！', '2130706433', 'Windows 7', 'Chrome', 'admin', '2022-06-01 15:08:34'),
 ('243', 'info', '登录成功!', '1901583915', 'Windows 10', 'Chrome', 'admin', '2023-07-10 10:55:39'),
 ('244', 'info', '修改参数配置成功！', '1901583915', 'Windows 10', 'Chrome', 'admin', '2023-07-10 10:56:34');

-- 表：ay_tags
DROP TABLE IF EXISTS `ay_tags`;
CREATE TABLE `ay_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `acode` varchar(20) NOT NULL COMMENT '区域',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `link` varchar(200) NOT NULL COMMENT '链接',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ay_tags_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ay_tags` (`id`,`acode`,`name`,`link`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('1', 'cn', '模板', 'http://www.5MoBan.Com', 'admin', 'admin', '2019-07-12 14:33:13', ' 2022-03-28 13:27:15'),
 ('2', 'cn', '产品', 'http://www.BaJieZhan.Com', 'admin', 'admin', '2022-03-28 13:27:20', '2022-03-28 13:27:20'),
 ('3', 'cn', '网站', 'http://www.WanWeiZhan.Com', 'admin', 'admin', '2022-03-28 13:27:26', '2022-03-28 13:27:26'),
 ('4', 'cn', '公司', 'http://www.kuaimoban.com/', 'admin', 'admin', '2022-03-28 13:27:34', '2022-03-28 13:27:34'),
 ('5', 'cn', '企业', 'http://www.PBma.cn', 'admin', 'admin', '2022-03-28 13:27:45', '2022-03-28 13:27:45'),
 ('6', 'cn', '空间', 'http://www.elubaba.com', 'admin', 'admin', '2022-04-04 14:43:42', '2022-04-04 14:43:42'),
 ('7', 'cn', '源码', 'http://www.WanWeiZhan.Com', 'admin', 'admin', '2022-04-04 14:56:10', '2022-04-04 14:56:10'),
 ('8', 'cn', '智慧云', 'http://www.zhiidc.com/', 'admin', 'admin', '2022-04-04 14:57:05', '2022-04-04 14:57:05'),
 ('9', 'cn', '分站', 'http://Www.YunYunAn.Com', 'admin', 'admin', '2022-04-04 14:57:53', ' 2022-04-17 18:10:55'),
 ('10', 'cn', '站群', 'http://www.yiqida.com/tpl/', 'admin', 'admin', '2022-04-04 14:58:16', '2022-04-04 14:58:16'),
 ('11', 'cn', '建站', 'http://www.HaiNaBa.Com/', 'admin', 'admin', '2022-04-04 14:58:38', '2022-04-04 14:58:38'),
 ('12', 'cn', '三合一', 'Http://HaiNaNt.Com', 'admin', 'admin', '2022-04-04 14:58:57', '2022-04-04 14:58:57'),
 ('13', 'cn', '目录', 'http://www.XinMuLu.Com', 'admin', 'admin', '2022-04-24 00:00:50', '2022-04-24 00:00:50'),
 ('14', 'cn', '导航', 'http://www.XinMuLu.Com', 'admin', 'admin', '2022-04-24 00:01:04', '2022-04-24 00:01:04'),
 ('15', 'cn', '网址', 'http://www.zlwz.Com', 'admin', 'admin', '2022-04-24 00:01:35', '2022-04-24 00:01:35'),
 ('16', 'cn', '开发', 'http://www.KaiFaTang.com', 'admin', 'admin', '2022-04-24 00:02:51', '2022-04-24 00:02:51'),
 ('17', 'cn', '资源', 'http://www.ZiYuanAi.com', 'admin', 'admin', '2022-04-24 00:03:25', '2022-04-24 00:03:25'),
 ('18', 'cn', '助力', 'http://www.zlwz.Com', 'admin', 'admin', '2022-04-24 00:05:17', '2022-04-24 00:05:17'),
 ('19', 'cn', '易优', 'http://www.eYouAdmin.Com', 'admin', 'admin', '2022-04-24 14:26:02', '2022-04-24 14:26:02');

-- 表：ay_type
DROP TABLE IF EXISTS `ay_type`;
CREATE TABLE `ay_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `tcode` varchar(20) NOT NULL COMMENT '类型编码',
  `name` varchar(30) NOT NULL COMMENT '类型名称',
  `item` varchar(30) NOT NULL COMMENT '类型项',
  `value` varchar(20) NOT NULL DEFAULT '0' COMMENT '类型值',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新时间',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ay_type_tcode` (`tcode`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `ay_type` (`id`,`tcode`,`name`,`item`,`value`,`sorting`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 ('1', 'T101', '菜单功能', '新增', 'add', 1, 'admin', 'admin', '2017-04-27 07:28:34', '2017-08-09 15:25:56'),
 ('2', 'T101', '菜单功能', '删除', 'del', 2, 'admin', 'admin', '2017-04-27 07:29:08', '2017-08-09 15:23:34'),
 ('3', 'T101', '菜单功能', '修改', 'mod', 3, 'admin', 'admin', '2017-04-27 07:29:34', '2017-08-09 15:23:32'),
 ('4', 'T101', '菜单功能', '导出', 'export', 4, 'admin', 'admin', '2017-04-27 07:30:42', '2017-08-09 15:23:29'),
 ('5', 'T101', '菜单功能', '导入', 'import', 5, 'admin', 'admin', '2017-04-27 07:31:38', '2017-08-09 15:23:27');

-- 表：ay_user
DROP TABLE IF EXISTS `ay_user`;
CREATE TABLE `ay_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `ucode` varchar(20) NOT NULL COMMENT '用户编码',
  `username` varchar(30) NOT NULL COMMENT '用户账号',
  `realname` varchar(30) NOT NULL COMMENT '真实名字',
  `password` char(32) NOT NULL COMMENT '用户密码',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `last_login_ip` varchar(11) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_user_ucode` (`ucode`),
  KEY `ay_user_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `ay_user` (`id`,`ucode`,`username`,`realname`,`password`,`status`,`login_count`,`last_login_ip`,`create_user`,`update_user`,`create_time`,`update_time`) VALUES
 (1, '10001', 'admin', '我的PB模板网 5moban.com', 'c3284d0f94606de1fd2af172aba15bf3', '1', 12, '1901583915', 'admin', 'admin', '2017-05-08 18:50:30', ' 2023-07-10 10:55:39');

-- 表：ay_user_role
DROP TABLE IF EXISTS `ay_user_role`;
CREATE TABLE `ay_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ucode` varchar(20) NOT NULL COMMENT '用户编码',
  `rcode` varchar(20) NOT NULL COMMENT '角色编码',
  PRIMARY KEY (`id`),
  KEY `ay_user_role_ucode` (`ucode`),
  KEY `ay_user_role_rcode` (`rcode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `ay_user_role` (`id`,`ucode`,`rcode`) VALUES
('1','10001','R101');