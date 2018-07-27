
INSERT INTO `job_class` VALUES ('0bbbb85ac316471f850914bb1ad06b89', 'hello', 'com.supyuan.system.job.jobWeb.job.TestJob', 'hello', 'hello');
INSERT INTO `job_class` VALUES ('767bde8d282e45859faf33b85d55356f', 'add', 'com.supyuan.system.job.jobWeb.job.TestJob', 'add', 'add');
INSERT INTO `job_class` VALUES ('849625f42a4a4f6795a7cceed4bebd02', 'upd', 'com.supyuan.system.job.jobWeb.job.TestJob', 'upd', 'upd');
INSERT INTO `job_class` VALUES ('97b950241b9e4f3485289f1f2605467f', 'sel', 'com.supyuan.system.job.jobWeb.job.TestJob', 'sel', 'sel');
INSERT INTO `job_class` VALUES ('db4c457fd6f445249c45b20952d284e4', 'del', 'com.supyuan.system.job.jobWeb.job.TestJob', 'del', 'del');

INSERT INTO `job_class_param` VALUES ('07848f8a2a3c4fadbea5bfe153b407dc', 'uids', '1', 'java.lang.String', '1', 'java.lang.String', '97b950241b9e4f3485289f1f2605467f', NULL);
INSERT INTO `job_class_param` VALUES ('3aaefac4e71542c99c5823f699c7d3b9', 'name', '1', 'java.lang.String', '1', 'java.lang.String', '767bde8d282e45859faf33b85d55356f', NULL);
INSERT INTO `job_class_param` VALUES ('543948adebdc41b0b0409e3dc5b22ebc', 'emali', '1', 'java.lang.String', '1', 'java.lang.String', '767bde8d282e45859faf33b85d55356f', NULL);
INSERT INTO `job_class_param` VALUES ('67b5687f2783440dab793e020a29c7e6', 'adds', '1', 'java.lang.String', '1', 'java.lang.String', '849625f42a4a4f6795a7cceed4bebd02', NULL);
INSERT INTO `job_class_param` VALUES ('8962135fbd6e45cdbea430cef89a8e73', 'params1', '1', 'java.lang.String', '1', 'java.lang.String', 'db4c457fd6f445249c45b20952d284e4', NULL);
INSERT INTO `job_class_param` VALUES ('8e1b48611ceb407f932808ee0c511083', 'content', '1', 'java.lang.String', '1', 'java.lang.String', 'db4c457fd6f445249c45b20952d284e4', NULL);
INSERT INTO `job_class_param` VALUES ('90c3df3c7d96488ab7c6d837937f0003', 'data1', '1', 'java.lang.String', '1', 'java.lang.String', 'db4c457fd6f445249c45b20952d284e4', NULL);
INSERT INTO `job_class_param` VALUES ('988d845e403d4f088cfb701efe7b0480', 'num', '1', 'java.lang.String', '1', 'java.lang.Integer', '97b950241b9e4f3485289f1f2605467f', NULL);
INSERT INTO `job_class_param` VALUES ('9d0fd7b965d541d2a58821f4f0fca245', 'tel', '1', 'java.lang.String', '1', 'java.lang.Integer', '849625f42a4a4f6795a7cceed4bebd02', NULL);


INSERT INTO `job` VALUES ('a460091061e0495f803e9963ca6b8aee', '周一到周五每5分钟一次', '周一到周五每5分钟一次', 'db4c457fd6f445249c45b20952d284e4', '0', '周一到周五每5分钟一次', NULL, '2018-07-12', '0 0/5 * ? * 2,3,4,5,6');

INSERT INTO `job_param_value` VALUES ('3b5db248cf03443496c3639b603939f6', '123', '1', 'data1', NULL, '90c3df3c7d96488ab7c6d837937f0003', 'a460091061e0495f803e9963ca6b8aee');
INSERT INTO `job_param_value` VALUES ('a1ea8bb34dd14a3faf1fa91ee58988f1', 'test', '1', 'params1', NULL, '8962135fbd6e45cdbea430cef89a8e73', 'a460091061e0495f803e9963ca6b8aee');
INSERT INTO `job_param_value` VALUES ('c939079127014d56ae6a2058ea697631', 'rain', '1', 'content', NULL, '8e1b48611ceb407f932808ee0c511083', 'a460091061e0495f803e9963ca6b8aee');



INSERT INTO `sys_auth` VALUES (1, 99, '/system/sysauth/add', '添加系统权限', 'F', 1511943426581, 1511943829504);

INSERT INTO `sys_auth_user` VALUES (1, 99, 1, '*', 'F', NULL, NULL);
INSERT INTO `sys_auth_user` VALUES (2, 99, 14, '17,14,13', 'F', NULL, NULL);
INSERT INTO `sys_auth_user` VALUES (3, 99, 13, '14,13', 'F', NULL, NULL);
INSERT INTO `sys_auth_user` VALUES (4, 99, 17, '21', 'F', NULL, NULL);
INSERT INTO `sys_auth_user` VALUES (5, 99, 16, '21', 'F', NULL, NULL);
INSERT INTO `sys_auth_user` VALUES (6, 99, 15, '21', 'F', NULL, NULL);
INSERT INTO `sys_auth_user` VALUES (7, 99, 18, '21', 'F', NULL, NULL);

INSERT INTO `sys_department` VALUES (1, 0, '深山飞雨', NULL, 99, NULL, NULL, NULL, '2017-11-30 14:45:18', 1, '2016-06-06 06:06:06', 1);
INSERT INTO `sys_department` VALUES (44, 1, '研发部', NULL, 10, NULL, NULL, NULL, '2017-11-30 14:39:22', 1, '2017-11-30 14:39:22', 1);
INSERT INTO `sys_department` VALUES (45, 1, '资源部', NULL, 20, NULL, NULL, NULL, '2017-11-30 14:41:46', 1, '2017-11-30 14:41:46', 1);
INSERT INTO `sys_department` VALUES (46, 1, '行政', NULL, 30, NULL, NULL, NULL, '2017-11-30 14:45:03', 1, '2017-11-30 14:45:03', 1);

INSERT INTO `sys_dict` VALUES (1, '日志配置', 'systemLog', NULL);
INSERT INTO `sys_dict` VALUES (2, '目录类型', 'articleType', NULL);
INSERT INTO `sys_dict` VALUES (11, '目录类型', 'folderType', NULL);
INSERT INTO `sys_dict` VALUES (100, '系统参数', 'systemParam', NULL);
INSERT INTO `sys_dict` VALUES (101, '友情链接类型', 'friendlyLinkType', NULL);
INSERT INTO `sys_dict` VALUES (102, '栏目类型', 'materialType', NULL);
INSERT INTO `sys_dict` VALUES (103, '1', '1', '1');
INSERT INTO `sys_dict` VALUES (104, '修改', '修改', '修改');

INSERT INTO `sys_dict_detail` VALUES (1, 'folderType', '目录', '1', '1', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (3, 'folderType', 'a标签target', '3', '3', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (21, 'friendlyLinkType', '友情链接', NULL, '1', NULL, NULL, NULL, NULL, '2015-05-06 15:18:59', 1);
INSERT INTO `sys_dict_detail` VALUES (51, 'systemLog', 'sys_dict', '数据字典主表', '1', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (52, 'systemLog', 'sys_dict_detail', '数据字典', '2', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (53, 'systemLog', 'sys_menu', '菜单管理', '3', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (54, 'systemLog', 'sys_department', '组织机构', '4', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (55, 'systemLog', 'sys_user', '用户管理', '5', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (56, 'systemLog', 'sys_user_role', '用户角色授权', '6', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (57, 'systemLog', 'sys_role', '角色管理', '7', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (58, 'systemLog', 'sys_role_folder', '角色目录授权', '8', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (59, 'systemLog', 'sys_role_menu', '角色菜单授权', '9', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (60, 'systemLog', 'tb_folder', '目录管理', '102', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (61, 'systemLog', 'tb_article', '文章管理', '11', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (62, 'systemLog', 'tb_articlelike', '喜欢的文章管理', '12', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (63, 'systemLog', 'tb_comment', '评论管理', '13', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (65, 'systemLog', 'tb_contact', '联系人', '15', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (66, 'systemLog', 'tb_error', '错误管理', '16', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (68, 'systemLog', 'tb_pageview', '访问量统计', '18', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (101, 'systemParam', '门头沟信息网', '1', '1', NULL, NULL, NULL, NULL, '2015-01-30', 1);
INSERT INTO `sys_dict_detail` VALUES (102, 'materialType', '文章', '1', '1', NULL, NULL, NULL, NULL, '2016-03-31 22:35:05', 1);
INSERT INTO `sys_dict_detail` VALUES (103, 'materialType', '图片', '2', '2', NULL, NULL, NULL, NULL, '2016-03-31 22:35:17', 1);
INSERT INTO `sys_dict_detail` VALUES (104, 'materialType', '视频', '3', '3', NULL, NULL, NULL, NULL, '2016-03-31 22:35:28', 1);
INSERT INTO `sys_dict_detail` VALUES (105, 'materialType', '其他', '9', '9', NULL, NULL, NULL, NULL, '2016-03-31 22:35:39', 1);
INSERT INTO `sys_dict_detail` VALUES (106, 'materialType', '栏目', '6', '6', NULL, NULL, NULL, NULL, '2016-03-31 23:46:27', 1);
INSERT INTO `sys_dict_detail` VALUES (107, 'systemLog', 'tb_site', '站点管理', '19', NULL, NULL, NULL, NULL, '2016-04-14 00:02:45', 1);
INSERT INTO `sys_dict_detail` VALUES (108, 'friendlyLinkType', NULL, NULL, '0', NULL, NULL, NULL, NULL, '2017-05-17 21:41:11', 1);
INSERT INTO `sys_dict_detail` VALUES (109, 'systemLog', 'ppp', 'pp', '0', NULL, NULL, NULL, NULL, '2017-11-08 04:50:55', 1);
INSERT INTO `sys_dict_detail` VALUES (110, 'articleType', '1', '1', '0', NULL, NULL, NULL, NULL, '2017-11-12 09:13:13', 1);
INSERT INTO `sys_dict_detail` VALUES (111, 'systemParam', NULL, NULL, '0', NULL, NULL, NULL, NULL, '2017-11-13 01:26:01', 1);

INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', 'system_root', NULL, 1, 1, 90, 1, '2015-04-27 17:28:06', 1);
INSERT INTO `sys_menu` VALUES (2, 1, '组织机构', 'department', 'system/department', 1, 1, 91, 2, '2015-04-27 17:28:25', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '用户管理', 'user', 'system/user', 1, 1, 92, 2, '2015-04-27 17:28:46', 1);
INSERT INTO `sys_menu` VALUES (4, 1, '角色管理', 'role', 'system/role', 1, 1, 94, 2, '2015-04-27 17:29:13', 1);
INSERT INTO `sys_menu` VALUES (5, 1, '菜单管理', 'menu', 'system/menu', 1, 1, 96, 2, '2015-04-27 17:29:43', 1);
INSERT INTO `sys_menu` VALUES (6, 1, '数据字典', 'dict', 'system/dict', 1, 1, 97, 2, '2015-04-27 17:30:05', 1);
INSERT INTO `sys_menu` VALUES (14, 1, '日志管理', 'log', 'system/log/list', 1, 1, 98, 2, '2016-01-03 18:09:18', 1);
INSERT INTO `sys_menu` VALUES (30, 0, '任务管理', 'job', NULL, 1, 1, 2, 1, '2017-06-01 09:51:36', 1);
INSERT INTO `sys_menu` VALUES (31, 30, '时间规则', 'job_times', 'quartz/times/list', 2, 1, 3, 2, '2017-06-01 09:53:57', 1);
INSERT INTO `sys_menu` VALUES (32, 30, '触发器', 'job_tigger', 'quartz/trigger/list', 2, 1, 4, 2, '2017-06-01 09:54:53', 1);
INSERT INTO `sys_menu` VALUES (33, 30, '执行类', 'job_class', 'quartz/jobclass/list', 1, 1, 5, 2, '2017-06-01 09:55:59', 1);
INSERT INTO `sys_menu` VALUES (34, 30, 'job任务', 'job_jobs', 'quartz/jobs/list', 1, 1, 6, 2, '2017-06-01 09:57:00', 1);
INSERT INTO `sys_menu` VALUES (35, 30, '执行日志', 'job_log', 'quartz/log/list', 1, 1, 7, 2, '2017-07-05 10:45:38', 1);
INSERT INTO `sys_menu` VALUES (36, 0, '一元精品区', 'vpn', 'http://www.yxyun.win', 1, 4, 30, 1, '2017-11-06 14:33:21', 1);
INSERT INTO `sys_menu` VALUES (39, 1, '系统权限', 'auth', 'system/sysauth', 1, 1, 99, 2, '2017-11-29 16:04:17', 1);
INSERT INTO `sys_menu` VALUES (40, 0, '1234', '3124', '1324', 1, 1, 1234, 1, '2018-04-25 15:35:13', 18);
INSERT INTO `sys_menu` VALUES (41, 36, '挨打', '案例库', '啊', 1, 1, 1, 2, '2018-06-02 15:51:31', 18);
INSERT INTO `sys_menu` VALUES (42, 0, '3434', '43343434', '34343434', 1, 1, NULL, 1, '2018-06-02 15:52:10', 18);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (10, '实习生', 1, 3, NULL, '2017-11-30 14:50:12', 1);
INSERT INTO `sys_role` VALUES (11, '见习主管', 1, 2, NULL, '2017-11-30 14:50:43', 1);
INSERT INTO `sys_role` VALUES (12, '主管', 1, 1, NULL, '2017-11-30 14:50:59', 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (133, 12, 30);
INSERT INTO `sys_role_menu` VALUES (134, 12, 33);
INSERT INTO `sys_role_menu` VALUES (135, 12, 34);
INSERT INTO `sys_role_menu` VALUES (136, 12, 35);
INSERT INTO `sys_role_menu` VALUES (137, 12, 36);
INSERT INTO `sys_role_menu` VALUES (138, 12, 1);
INSERT INTO `sys_role_menu` VALUES (139, 12, 2);
INSERT INTO `sys_role_menu` VALUES (140, 12, 3);
INSERT INTO `sys_role_menu` VALUES (141, 12, 4);
INSERT INTO `sys_role_menu` VALUES (142, 12, 5);
INSERT INTO `sys_role_menu` VALUES (143, 12, 6);
INSERT INTO `sys_role_menu` VALUES (144, 12, 14);
INSERT INTO `sys_role_menu` VALUES (145, 12, 39);
INSERT INTO `sys_role_menu` VALUES (146, 11, 30);
INSERT INTO `sys_role_menu` VALUES (147, 11, 33);
INSERT INTO `sys_role_menu` VALUES (148, 11, 34);
INSERT INTO `sys_role_menu` VALUES (149, 11, 35);
INSERT INTO `sys_role_menu` VALUES (150, 11, 36);
INSERT INTO `sys_role_menu` VALUES (151, 11, 1);
INSERT INTO `sys_role_menu` VALUES (152, 11, 3);
INSERT INTO `sys_role_menu` VALUES (153, 11, 5);
INSERT INTO `sys_role_menu` VALUES (154, 11, 14);
INSERT INTO `sys_role_menu` VALUES (155, 10, 30);
INSERT INTO `sys_role_menu` VALUES (156, 10, 33);
INSERT INTO `sys_role_menu` VALUES (157, 10, 34);
INSERT INTO `sys_role_menu` VALUES (158, 10, 35);
INSERT INTO `sys_role_menu` VALUES (159, 10, 36);
INSERT INTO `sys_role_menu` VALUES (160, 10, 1);
INSERT INTO `sys_role_menu` VALUES (161, 10, 14);


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'ByBhEATY53A=', '系统管理员', 1, 1, 10, NULL, NULL, '454979901@qq.com', NULL, NULL, NULL, '时间是最好的老师，但遗憾的是——最后他把所有的学生都弄死了', 'flat', 5, 1, '2016-06-06 06:06:06', 1);
INSERT INTO `sys_user` VALUES (15, 'demo', 'ByBhEATY53A=', 'demo', 44, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat', 0, 1, '2017-11-30 14:46:24', 1);
INSERT INTO `sys_user` VALUES (16, 'demo2', 'ByBhEATY53A=', 'demo2', 45, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat', 0, 1, '2017-11-30 14:47:15', 1);
INSERT INTO `sys_user` VALUES (17, 'demo3', 'ByBhEATY53A=', 'demo3', 46, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat', 0, 1, '2017-11-30 14:47:35', 1);
INSERT INTO `sys_user` VALUES (18, 'admin2', 'ByBhEATY53A=', '管理员', 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'flat-ui', 0, 1, '2017-11-30 14:48:35', 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (2, 4, 3);
INSERT INTO `sys_user_role` VALUES (3, 4, 1);
INSERT INTO `sys_user_role` VALUES (7, 3, 3);
INSERT INTO `sys_user_role` VALUES (8, 3, 1);
INSERT INTO `sys_user_role` VALUES (22, 6, 2);
INSERT INTO `sys_user_role` VALUES (26, 9, 6);
INSERT INTO `sys_user_role` VALUES (27, 2, 2);
INSERT INTO `sys_user_role` VALUES (31, 12, 2);
INSERT INTO `sys_user_role` VALUES (45, 17, 12);
INSERT INTO `sys_user_role` VALUES (46, 16, 11);
INSERT INTO `sys_user_role` VALUES (47, 15, 10);



