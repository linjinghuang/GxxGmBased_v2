DROP TABLE IF EXISTS 'devices';
CREATE TABLE devices(
id INTEGER PRIMARY KEY NOT NULL,
name VARVHAR(32) NOT NULL,            -- 设备名称
type INTEGER NOT NULL,                -- 【28181扩展字段】设备类型
gbcode VARCHAR(32) NOT NULL,          -- 设备国标编码
father_gbcode VARCHAR(32) NOT NULL,   -- 父设备编码
manufacturer VARCHAR(64) NOT NULL,    -- 制造商
model VARCHAR(64) NOT NULL,           -- 型号
owner VARCHAE(64) NOT NULL,           -- 所有者
civilcode VARCHAR(64) NOT NULL,       -- 行政区域
block VARCHAR(64) NOT NULL,           -- 警区
address VARCHAR(64) NOT NULL,         -- 地址
parental INTEGER NOT NULL,            -- 是否是父对象
safety_way INTEGER NOT NULL,          -- 信令安全模式
register_way INTEGER NOT NULL,        -- 注册方式，默认：1
cert_num VARCHAR(64) NOT NULL,        -- 证书序列号
certifiable INTEGER NOT NULL,         -- 证书有效标志，有证书时为1，没有为0
errcode INTEGER NOT NULL,             -- 有证书且该证书无效的设备必选 证书无效原因码，一般为400
cert_endtime VARCHAR(64) NOT NULL,    -- 
secrecy INTEGER NOT NULL,             -- 保密属性 0不涉密 1涉密
ip_address VARCHAR(64) NOT NULL,      -- IP地址
port INTEGER NOT NULL,                -- 端口号
password VARCHAR(64) NOT NULL,        -- 
status INTEGER NOT NULL,              -- 在线状态，1-在线，0-不在线
longitude FLOAT NOT NULL,             -- 经度坐标
latitude FLOAT NOT NULL               -- 纬度坐标
);

INSERT
INTO devices(name, type, gbcode, father_gbcode, manufacturer, model, owner, civilcode, block, address, parental, safety_way, register_way, cert_num, certifiable, errcode, cert_endtime, secrecy, ip_address, port, password, status, longitude, latitude)
VALUES ('陈映庭', 1, '44011600001290000001', '44011600', 'GOSUNCN', 'V3.3', '44011600', '44011600', '44011600', '44011600', 0, 0, 1, 'cert_01', 0, 400, '2010-11-11T19:46:17', 0, '192.168.1.1', 5090, '12345678', 1, 113.283198, 23.143136);

INSERT
INTO devices(name, type, gbcode, father_gbcode, manufacturer, model, owner, civilcode, block, address, parental, safety_way, register_way, cert_num, certifiable, errcode, cert_endtime, secrecy, ip_address, port, password, status, longitude, latitude)
VALUES ('欧阳浩哲', 1, '44011600001290000002', '44011600', 'GOSUNCN', 'V3.3', '44011600', '44011600', '44011600', '44011600', 0, 0, 1, 'cert_01', 0, 400, '2010-11-11T19:46:17', 0, '192.168.1.1', 5090, '12345678', 1, 113.283198, 23.143136);

INSERT
INTO devices(name, type, gbcode, father_gbcode, manufacturer, model, owner, civilcode, block, address, parental, safety_way, register_way, cert_num, certifiable, errcode, cert_endtime, secrecy, ip_address, port, password, status, longitude, latitude)
VALUES ('李祥明', 1, '44011600001290000003', '44011600', 'GOSUNCN', 'V3.3', '44011600', '44011600', '44011600', '44011600', 0, 0, 1, 'cert_01', 0, 400, '2010-11-11T19:46:17', 0, '192.168.1.1', 5090, '12345678', 1, 113.283198, 23.143136);
