CREATE TABLE qi_address
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    number INT(11) NOT NULL,
    name VARCHAR(20) NOT NULL,
    father INT(11) DEFAULT '0' NOT NULL
);
CREATE TABLE qi_article
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category_id INT(11) NOT NULL,
    name VARCHAR(100) NOT NULL,
    title VARCHAR(200) NOT NULL,
    image VARCHAR(200) NOT NULL,
    read_times INT(11) DEFAULT '0' NOT NULL COMMENT '阅读次数',
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(4) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_article_category
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    parent_id INT(11) NOT NULL,
    sort INT(11) DEFAULT '0' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) NOT NULL
);
CREATE TABLE qi_article_detail
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    article_id INT(11) NOT NULL,
    detail LONGTEXT NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_brand
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    remark VARCHAR(200),
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_cart
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    member_id INT(20) DEFAULT '0' NOT NULL,
    goods_id INT(20) DEFAULT '0' NOT NULL,
    goods_amount_id INT(20) DEFAULT '0' NOT NULL,
    name VARCHAR(100) NOT NULL,
    image VARCHAR(200) NOT NULL,
    money DECIMAL(10,2) NOT NULL,
    amount INT(10) DEFAULT '1' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_category
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    parent_id INT(20) DEFAULT '0' NOT NULL COMMENT '父id',
    sort INT(10) DEFAULT '0' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(4) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_comment
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    member_id INT(11) NOT NULL COMMENT '0',
    object_type TINYINT(2) DEFAULT '0' NOT NULL COMMENT '对象类型1：文章评论，2：商品评论',
    object_id INT(11) DEFAULT '0' NOT NULL COMMENT '对象id',
    parent_id INT(11) DEFAULT '0' NOT NULL COMMENT '父id',
    replay_id INT(11) DEFAULT '0' NOT NULL COMMENT '回复的用户的id',
    content VARCHAR(500) NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '0' NOT NULL
);
CREATE TABLE qi_comment_up
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    member_id INT(11) DEFAULT '0' NOT NULL,
    comment_id INT(11) DEFAULT '0' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_format
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    remark VARCHAR(200),
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(4) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_format_value
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    remark VARCHAR(20),
    format_id INT(20) DEFAULT '0' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_goods
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) DEFAULT '' NOT NULL,
    goods_no VARCHAR(50) DEFAULT '0' NOT NULL,
    title VARCHAR(200) NOT NULL COMMENT '副标题',
    image VARCHAR(200) NOT NULL COMMENT '图片',
    category_id INT(20) DEFAULT '0' NOT NULL COMMENT '分类id',
    type_id INT(20) DEFAULT '0' NOT NULL,
    money_in DECIMAL(10,2) DEFAULT '0.00' NOT NULL,
    money_out DECIMAL(10,2) DEFAULT '0.00' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    date_status DATETIME,
    status TINYINT(1) DEFAULT '2' NOT NULL COMMENT '1上架2下架'
);
CREATE TABLE qi_goods_amount
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    goods_id INT(20) DEFAULT '0' NOT NULL,
    format1 INT(20) DEFAULT '0' NOT NULL,
    format2 INT(20) DEFAULT '0' NOT NULL,
    format3 INT(20) DEFAULT '0' NOT NULL,
    format4 INT(20) DEFAULT '0' NOT NULL,
    format5 INT(20) DEFAULT '0' NOT NULL,
    format1_remark VARCHAR(20),
    format2_remark VARCHAR(20),
    format3_remark VARCHAR(20),
    format4_remark VARCHAR(20),
    format5_remark VARCHAR(20),
    amount INT(20) NOT NULL,
    money DECIMAL(10,2) DEFAULT '0.00' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_goods_detail
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    goods_id INT(20) DEFAULT '0' NOT NULL,
    detail VARCHAR(2000) DEFAULT '' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_goods_type
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) DEFAULT '' NOT NULL,
    format1 INT(20) DEFAULT '0' NOT NULL COMMENT '规格',
    format2 INT(20) DEFAULT '0' NOT NULL,
    format3 INT(20) DEFAULT '0' NOT NULL,
    format4 INT(20) DEFAULT '0' NOT NULL,
    format5 INT(20) DEFAULT '0' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_joke
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    content VARCHAR(1000) NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(4) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_log
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT(11) COMMENT '日志记录人',
    log_info VARCHAR(255),
    ip_address VARCHAR(32),
    date_add DATETIME
);
CREATE TABLE qi_member
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name_real VARCHAR(20) NOT NULL COMMENT '姓名',
    name_nick VARCHAR(20) NOT NULL COMMENT '昵称',
    password VARCHAR(50) NOT NULL,
    phone VARCHAR(20) DEFAULT '0' NOT NULL,
    email VARCHAR(50) DEFAULT '0' NOT NULL,
    weixin VARCHAR(50) NOT NULL COMMENT '微信号',
    weixin_id VARCHAR(50) NOT NULL COMMENT '微信openid',
    qq VARCHAR(50) NOT NULL,
    email_check TINYINT(1) DEFAULT '0' NOT NULL COMMENT '邮箱验证',
    integral INT(20) DEFAULT '0' NOT NULL COMMENT '积分',
    sex TINYINT(1) DEFAULT '0' NOT NULL COMMENT '性别',
    birthday DATE COMMENT '生日',
    headpic VARCHAR(100) NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_member_address
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    member_id INT(20) NOT NULL,
    province INT(20) DEFAULT '0' NOT NULL COMMENT '省',
    city INT(20) DEFAULT '0' NOT NULL COMMENT '市',
    area INT(20) DEFAULT '0' NOT NULL COMMENT '区',
    detail VARCHAR(200) NOT NULL COMMENT '详细地址',
    phone VARCHAR(20) DEFAULT '0' NOT NULL COMMENT '联系电话',
    person VARCHAR(20) NOT NULL COMMENT '联系人',
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_order
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_no VARCHAR(20) DEFAULT '0' NOT NULL,
    member_id INT(20) DEFAULT '0' NOT NULL,
    money_goods DECIMAL(10,2) DEFAULT '0.00' NOT NULL,
    money_preferential DECIMAL(10,2) DEFAULT '0.00' NOT NULL COMMENT '优惠',
    money_shipping DECIMAL(10,2) DEFAULT '0.00' NOT NULL COMMENT '配送费用',
    money_end DECIMAL(10,2) DEFAULT '0.00' NOT NULL,
    payment_id INT(20) DEFAULT '0' NOT NULL COMMENT '支付方式',
    accept_name VARCHAR(20) DEFAULT '' NOT NULL,
    accept_province VARCHAR(20) DEFAULT '' NOT NULL,
    accept_city VARCHAR(20) DEFAULT '' NOT NULL,
    accept_area VARCHAR(20) DEFAULT '' NOT NULL,
    accept_detail VARCHAR(200) DEFAULT '' NOT NULL,
    accept_phone VARCHAR(20) DEFAULT '0' NOT NULL,
    remark VARCHAR(50) DEFAULT '' NOT NULL COMMENT '备注',
    date_add DATETIME,
    date_edit DATETIME,
    date_pay DATETIME COMMENT '支付日期',
    date_send DATETIME COMMENT '发货日期',
    date_end DATETIME COMMENT '结束日期',
    status TINYINT(1) DEFAULT '1' NOT NULL COMMENT '0订单取消1订单提交2付款成功3已经发货4订单完成',
    track_id INT(11) DEFAULT '0' NOT NULL,
    track_no VARCHAR(50) DEFAULT '' NOT NULL COMMENT '快递单号'
);
CREATE TABLE qi_order_goods
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_id INT(20) DEFAULT '0' NOT NULL,
    goods_id INT(20) DEFAULT '0' NOT NULL,
    goods_amount_id INT(20) DEFAULT '0' NOT NULL COMMENT '规格库存id',
    goods_name VARCHAR(100) NOT NULL,
    amount INT(20) DEFAULT '0' NOT NULL COMMENT '数量',
    money DECIMAL(10,2) DEFAULT '0.00' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_payment
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) DEFAULT '' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL,
    `key` VARCHAR(20) DEFAULT '' NOT NULL
);
CREATE TABLE qi_role
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    remark VARCHAR(50),
    parent_id INT(20) DEFAULT '0',
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(2) DEFAULT '1'
);
CREATE TABLE qi_role_access
(
    role_id INT(20) DEFAULT '0' NOT NULL,
    `key` VARCHAR(50) DEFAULT '0' NOT NULL
);
CREATE TABLE qi_setting
(
    s_key VARCHAR(50) PRIMARY KEY NOT NULL,
    s_value VARCHAR(100)
);
CREATE TABLE qi_user
(
    id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    name_real VARCHAR(20),
    password VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(50),
    role INT(20) DEFAULT '0',
    date_add DATETIME,
    date_edit DATETIME,
    password_times TINYINT(2) DEFAULT '0' NOT NULL COMMENT '密码错误尝试次数',
    status TINYINT(1) DEFAULT '1' NOT NULL COMMENT '1有效，2锁定，3注销'
);
CREATE TABLE qi_weixin_likes
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    member_id INT(11) DEFAULT '0' NOT NULL,
    content VARCHAR(1000) DEFAULT '' NOT NULL,
    image VARCHAR(100) NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(1) DEFAULT '1' NOT NULL
);
CREATE TABLE qi_weixin_likes_up
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    member_id INT(11) DEFAULT '0' NOT NULL,
    weixin_likes_id INT(11) DEFAULT '0' NOT NULL,
    date_add DATETIME,
    date_edit DATETIME,
    status TINYINT(4) DEFAULT '1' NOT NULL
);