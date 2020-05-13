CREATE STREAM ssl_stream ( 
ts DOUBLE(16,6), 
uid STRING, 
"id.orig_h" VARCHAR, 
"id.orig_p" INTEGER, 
"id.resp_h" VARCHAR, 
"id.resp_p" INTEGER, 
version STRING, 
cipher VARCHAR, 
curve STRING, 
server_name VARCHAR, 
resumed BOOLEAN, 
next_protocol VARCHAR, 
established BOOLEAN, 
cert_chain_fuids ARRAY<STRING>, 
client_cert_chain_fuids ARRAY<STRING>, 
subject VARCHAR, 
issuer VARCHAR, 
validation_status STRING) 
WITH (KAFKA_TOPIC='ssl', VALUE_FORMAT='JSON');