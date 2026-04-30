CREATE TABLE guacamole_connection (
  connection_id SERIAL PRIMARY KEY,
  connection_name VARCHAR(128) NOT NULL,
  protocol VARCHAR(32) NOT NULL
);

INSERT INTO guacamole_connection (connection_name, protocol)
VALUES ('Windows 7', 'rdp');

CREATE TABLE guacamole_connection_parameter (
  parameter_id SERIAL PRIMARY KEY,
  connection_id INTEGER NOT NULL,
  parameter_name VARCHAR(128) NOT NULL,
  parameter_value VARCHAR(4096) NOT NULL
);

INSERT INTO guacamole_connection_parameter (connection_id, parameter_name, parameter_value) VALUES
(1,'hostname','192.168.1.10'),
(1,'port','3389'),
(1,'username','user'),
(1,'password','password');
