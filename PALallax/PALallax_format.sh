#! /bin/bash

curl -X PUT "localhost:9200/_template/template_01?pretty" -H 'Content-Type: application/json' -d '
{
  "template" : "palo_syslog_*",
  "settings" : {
    "number_of_shards" : 1,
    "number_of_replicas" : 0,
    "refresh_interval" : "1s"
  },
  "mappings" : {
    "dynamic_templates": [{
      "defaultmapping_notanalyzed": {
        "match": "*",
        "match_mapping_type": "string",
        "mapping": {"type": "keyword", "index": "false"}
      }
    }],
    "properties": {
      "hostname": {"type":"keyword","index":"false"},
      "receive_time": {"type":"date","format":"strict_date_optional_time||epoch_second"},
      "serial": {"type":"keyword","index":"false"},
      "type": {"type":"keyword","index":"false"},
      "subtype_traffic": {"type":"keyword","index":"false"},
      "time_generated": {"type":"date","format":"strict_date_optional_time||epoch_second"},
      "src": {"type":"ip","index":"false"},
      "dst": {"type":"ip","index":"false"},
      "natsrc": {"type":"ip","index":"false"},
      "natdst": {"type":"ip","index":"false"},
      "rule": {"type":"keyword","index":"false"},
      "srcuser": {"type":"keyword","index":"false"},
      "dstuser": {"type":"keyword","index":"false"},
      "app": {"type":"keyword","index":"false"},
      "vsys": {"type":"keyword","index":"false"},
      "from": {"type":"keyword","index":"false"},
      "to": {"type":"keyword","index":"false"},
      "inbound_if": {"type":"keyword","index":"false"},
      "outbound_if": {"type":"keyword","index":"false"},
      "logset": {"type":"keyword","index":"false"},
      "sessionid": {"type":"keyword","index":"false"},
      "repeatcnt": {"type":"integer","index":"false"},
      "sport": {"type":"keyword","index":"false"},
      "dport": {"type":"keyword","index":"false"},
      "natsport": {"type":"keyword","index":"false"},
      "natdport": {"type":"keyword","index":"false"},
      "flags": {"type":"keyword","index":"false"},
      "proto": {"type":"keyword","index":"false"},
      "action": {"type":"keyword","index":"false"},
      "bytes": {"type":"long","index":"false"},
      "bytes_sent": {"type":"long","index":"false"},
      "bytes_received": {"type":"long","index":"false"},
      "packets": {"type":"integer","index":"false"},
      "start": {"type":"date","format":"strict_date_optional_time||epoch_second"},
      "elapsed": {"type":"integer","index":"false"},
      "category": {"type":"keyword","index":"false"},
      "seqno": {"type":"keyword","index":"false"},
      "actionflags": {"type":"keyword","index":"false"},
      "srcloc": {"type":"keyword","index":"false"},
      "dstloc": {"type":"keyword","index":"false"},
      "pkts_sent": {"type":"integer","index":"false"},
      "pkts_received": {"type":"integer","index":"false"},
      "session_end_reason": {"type":"keyword","index":"false"},
      "cloud": {"type":"keyword","index":"false"},
      "contenttype": {"type":"keyword","index":"false"},
      "direction": {"type":"keyword","index":"false"},
      "filedigest": {"type":"keyword","index":"false"},
      "filetype": {"type":"keyword","index":"false"},
      "misc_file": {"type":"keyword","index":"false"},
      "misc_url": {"type":"keyword","index":"false"},
      "misc_virus": {"type":"keyword","index":"false"},
      "misc_wildfire": {"type":"keyword","index":"false"},
      "pcap_id": {"type":"keyword","index":"false"},
      "recipient": {"type":"keyword","index":"false"},
      "referer": {"type":"keyword","index":"false"},
      "reportid": {"type":"keyword","index":"false"},
      "sender": {"type":"keyword","index":"false"},
      "severity": {"type":"keyword","index":"false"},
      "subject": {"type":"keyword","index":"false"},
      "subtype_threat": {"type":"keyword","index":"false"},
      "threatid": {"type":"keyword","index":"false"},
      "user_agent": {"type":"keyword","index":"false"},
      "wildfire_result": {"type":"keyword","index":"false"},
      "xff": {"type":"keyword","index":"false"},
      "vsys_name": {"type":"keyword","index":"false"},
      "device_name": {"type":"keyword","index":"false"},
      "action_source": {"type":"keyword","index":"false"},
      "source_vm_uuid": {"type":"keyword","index":"false"},
      "destination_vm_uuid": {"type":"keyword","index":"false"},
      "http_method": {"type":"keyword","index":"false"},
      "tunnel_id_imsi": {"type":"keyword","index":"false"},
      "monitor_tag_imei": {"type":"keyword","index":"false"},
      "parent_session_id": {"type":"keyword","index":"false"},
      "parent_start_time": {"type":"keyword","index":"false"},
      "tunnel_type": {"type":"keyword","index":"false"},
      "threat_category": {"type":"keyword","index":"false"},
      "content_version": {"type":"keyword","index":"false"},
      "sctp_association_id": {"type":"keyword","index":"false"},
      "payload_protocol_id": {"type":"keyword","index":"false"},
      "http_headers": {"type":"keyword","index":"false"},
      "url_category_list": {"type":"keyword","index":"false"},
      "rule_uuid": {"type":"keyword","index":"false"},
      "http2_connection": {"type":"keyword","index":"false"},
      "dynamic_usergroup_name": {"type":"keyword","index":"false"}
    }
  }
}
'
