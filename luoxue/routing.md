# routing
## methods of obtaining routes
    Direct Routes
    Static Routes
    Dynamic Routes
   
## Routing information
    Destination/Mask
    outbound interface
    next hop
    
    protocol
    preference
    cost
    flags
    
## configuration
**ip route-static** *ip-address { mask | mask-length } nexthop-address*
**ip route-static** *ip-address { mask | mask-length }  innterface-type interface-number*
**ip route-static** *ip-address { mask | mask-length }  innterface-type interface-number [nexthop-address]*

<R1>display ip interface  brief 
<R1>display ip routing-table


# ospf
    