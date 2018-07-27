/*
 Navicat Premium Data Transfer

 Date: 11/07/2018 15:14:52
*/

-- SET NAMES utf8mb4;
 SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for job_class
-- ----------------------------
DROP TABLE IF EXISTS `job_class`;
CREATE TABLE `job_class`  (
  `uids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `class_all_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'java类全名称',
  `function_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`uids`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务job执行class' ROW_FORMAT = Compact;


-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `uids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `job_name` varchar(450) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_content` varchar(450) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobclass_uids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'job_class 表主键',
  `job_state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  `to_quartztimes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '时间规则表达式',
  PRIMARY KEY (`uids`) USING BTREE,
  INDEX `FK_JOB_CLASS_UIDS`(`jobclass_uids`) USING BTREE,
  CONSTRAINT `FK_JOB_CLASS_UIDS` FOREIGN KEY (`jobclass_uids`) REFERENCES `job_class` (`uids`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度任务表' ROW_FORMAT = Compact;


-- ----------------------------
-- Table structure for job_class_param
-- ----------------------------
DROP TABLE IF EXISTS `job_class_param`;
CREATE TABLE `job_class_param`  (
  `uids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classparam_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classparam_state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `return_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classparam_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `param_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobclass_uids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'job_class  表主键',
  `parentuids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uids`) USING BTREE,
  INDEX `UIDS`(`uids`) USING BTREE,
  INDEX `FK_JOBCLASS_UIDS`(`parentuids`) USING BTREE,
  CONSTRAINT `FK_JOBCLASS_UIDS` FOREIGN KEY (`parentuids`) REFERENCES `job_class` (`uids`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'job执行关联的class的方法和参数' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for job_log
-- ----------------------------
DROP TABLE IF EXISTS `job_log`;
CREATE TABLE `job_log`  (
  `uids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `begintimes` bigint(13) NULL DEFAULT NULL,
  `endtimes` bigint(13) NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_classandfunction` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextruntime` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobuids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `run_ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uids`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'job任务执行日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for job_param_value
-- ----------------------------
DROP TABLE IF EXISTS `job_param_value`;
CREATE TABLE `job_param_value`  (
  `uids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `paramvalue_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paramvalue_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `param_uids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'job_class_param  主键',
  `job_uids` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'job  表主键',
  PRIMARY KEY (`uids`) USING BTREE,
  INDEX `fk_jobuids`(`job_uids`) USING BTREE,
  INDEX `fk_param_uids`(`param_uids`) USING BTREE,
  CONSTRAINT `fk_jobuids` FOREIGN KEY (`job_uids`) REFERENCES `job` (`uids`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_param_uids` FOREIGN KEY (`param_uids`) REFERENCES `job_class_param` (`uids`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务关联的执行类对应的参数值表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth`  (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `webapp_id` bigint(16) NOT NULL COMMENT '站点ID',
  `uri` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uri',
  `descript` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_halt` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'F' COMMENT '是否停用',
  `create_datetime` bigint(14) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_datetime` bigint(14) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_0`(`webapp_id`, `uri`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_auth_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_user`;
CREATE TABLE `sys_auth_user`  (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `webapp_id` bigint(16) NOT NULL COMMENT '站点ID',
  `user_id` bigint(16) NULL DEFAULT NULL,
  `cache_string` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存权限表id多个逗号分隔 全部*',
  `is_halt` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'F' COMMENT '是否停用',
  `create_datetime` bigint(14) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_datetime` bigint(14) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_0`(`webapp_id`, `user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级机构',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门/11111',
  `code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
  `sort` int(11) NULL DEFAULT 0 COMMENT '序号',
  `linkman` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `linkman_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构描述',
  `update_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) NULL DEFAULT 0 COMMENT '更新者',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) NULL DEFAULT 0 COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dict_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `dict_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `dict_remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `UK_SYS_DICT_TYPE`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail`  (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dict_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据字典类型',
  `detail_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `detail_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码',
  `detail_sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序号',
  `detail_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `detail_state` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `detail_content` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `detail_remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) NULL DEFAULT 0 COMMENT '创建者',
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` int(11) NOT NULL COMMENT '类型',
  `oper_object` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作对象',
  `oper_table` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作表',
  `oper_id` int(11) NULL DEFAULT 0 COMMENT '操作主键',
  `oper_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作类型',
  `oper_remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作备注',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `create_id` int(11) NULL DEFAULT 0 COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7298 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parentid` int(11) NOT NULL DEFAULT 0 COMMENT '父id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称/11111',
  `urlkey` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单key',
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态//radio/2,隐藏,1,显示',
  `type` int(11) NULL DEFAULT 1 COMMENT '类型//select/1,根目录,2,a标签,3,a标签_blank,4,外部url',
  `sort` int(11) NULL DEFAULT 1 COMMENT '排序',
  `level` int(11) NULL DEFAULT 1 COMMENT '级别',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) NULL DEFAULT 0 COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称/11111/',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态//radio/2,隐藏,1,显示',
  `sort` int(11) NULL DEFAULT 1 COMMENT '排序',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '说明//textarea',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) NULL DEFAULT 0 COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  `menuid` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名/11111',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `realname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `departid` int(11) NULL DEFAULT 0 COMMENT '部门/11111/dict',
  `usertype` int(11) NULL DEFAULT 2 COMMENT '类型//select/1,管理员,2,普通用户,3,前台用户,4,第三方用户,5,API用户',
  `state` int(11) NULL DEFAULT 10 COMMENT '状态',
  `thirdid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方ID',
  `endtime` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'email',
  `tel` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `title_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `theme` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default' COMMENT '主题',
  `back_site_id` int(11) NULL DEFAULT 0 COMMENT '后台选择站点ID',
  `create_site_id` int(11) NULL DEFAULT 1 COMMENT '创建站点ID',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) NULL DEFAULT 0 COMMENT '创建者',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
