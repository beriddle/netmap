# netmap
netmap.c  - Simple Network Discovery

netmap.js - Simple and easy to use javascript network map library

	Support NetJSON

		NetworkGraph JSON - http://netjson.org/rfc.html#NetworkGraph-schema

Example:

{
    "type": "NetworkGraph",
    "protocol": "static",
    "version": null,
    "revision": "xxxxxxxxx",
    "metric": null,
    "topology_id": "L1",
    "label": "Physical layer topology",
    "nodes": [
        {
            "id": "172.16.40.24",
            "label": "node-A",
            "local_addresses": [
                "10.0.0.1",
                "10.0.0.2"
            ],
            "properties": {
                "hostname": "node1.my.net"
            }
        },
        {
            "id": "172.16.40.60",
            "label": "node-B",
            "properties": {
                "hostname": "node2.my.net"
            }
        }
    ],
    "links": [
        {
            "source": "172.16.40.24",
            "target": "172.16.40.60",
            "cost": 1.000,
            "cost_text": "1020  bit/s",
            "properties": {
                "lq": 1.000,
                "nlq": 0.497
            }
        }
    ]
}
