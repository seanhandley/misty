module Misty::Openstack::IronicV1
  def v1
{"/"=>{:GET=>[:list_api_versions]},
 "/v1/"=>{:GET=>[:show_v1_api]},
 "/v1/nodes"=>{:POST=>[:create_node], :GET=>[:list_nodes]},
 "/v1/nodes/detail"=>{:GET=>[:list_nodes_detailed]},
 "/v1/nodes/{node_ident}"=>
  {:GET=>[:show_node_details],
   :PATCH=>[:update_node],
   :DELETE=>[:delete_node]},
 "/v1/nodes/{node_ident}/validate"=>{:GET=>[:validate_node]},
 "/v1/nodes/{node_ident}/maintenance"=>
  {:PUT=>[:set_maintenance_flag], :DELETE=>[:clear_maintenance_flag]},
 "/v1/nodes/{node_ident}/management/boot_device"=>
  {:PUT=>[:set_boot_device], :GET=>[:get_boot_device]},
 "/v1/nodes/{node_ident}/management/boot_device/supported"=>
  {:GET=>[:get_supported_boot_devices]},
 "/v1/nodes/{node_ident}/management/inject_nmi"=>
  {:PUT=>[:inject_nmi_non_masking_interrupts]},
 "/v1/nodes/{node_ident}/states"=>{:GET=>[:node_state_summary]},
 "/v1/nodes/{node_ident}/states/power"=>{:PUT=>[:change_node_power_state]},
 "/v1/nodes/{node_ident}/states/provision"=>
  {:PUT=>[:change_node_provision_state]},
 "/v1/nodes/{node_ident}/states/raid"=>{:PUT=>[:set_raid_config]},
 "/v1/nodes/{node_ident}/states/console"=>
  {:GET=>[:get_console], :PUT=>[:start_stop_console]},
 "/v1/nodes/{node_ident}/vendor_passthru/methods"=>{:GET=>[:list_methods]},
 "/v1/nodes/{node_ident}/vendor_passthru?method={method_name}"=>
  {:GET=>[:call_a_method]},
 "/v1/nodes/{node_ident}/vifs"=>
  {:GET=>[:list_attached_vifs_of_a_node], :POST=>[:attach_a_vif_to_a_node]},
 "/v1/nodes/{node_ident}/vifs/{node_vif_ident}"=>
  {:DELETE=>[:detach_vif_from_a_node]},
 "/v1/portgroups"=>{:GET=>[:list_portgroups], :POST=>[:create_portgroup]},
 "/v1/portgroups/detail"=>{:GET=>[:list_detailed_portgroups]},
 "/v1/portgroups/{portgroup_id}"=>
  {:GET=>[:show_portgroup_details],
   :PATCH=>[:update_a_portgroup],
   :DELETE=>[:delete_portgroup]},
 "/v1/nodes/{node_ident}/portgroups"=>{:GET=>[:list_portgroups_by_node]},
 "/v1/nodes/{node_ident}/portgroups/detail"=>
  {:GET=>[:list_detailed_portgroups_by_node]},
 "/v1/ports"=>{:GET=>[:list_ports], :POST=>[:create_port]},
 "/v1/ports/detail"=>{:GET=>[:list_detailed_ports]},
 "/v1/ports/{port_id}"=>
  {:GET=>[:show_port_details],
   :PATCH=>[:update_a_port],
   :DELETE=>[:delete_port]},
 "/v1/nodes/{node_ident}/ports"=>{:GET=>[:list_ports_by_node]},
 "/v1/nodes/{node_ident}/ports/detail"=>{:GET=>[:list_detailed_ports_by_node]},
 "/v1/portgroups/{portgroup_ident}/ports"=>{:GET=>[:list_ports_by_portgroup]},
 "/v1/portgroups/{portgroup_ident}/ports/detail"=>
  {:GET=>[:list_detailed_ports_by_portgroup]},
 "/v1/drivers"=>{:GET=>[:list_drivers]},
 "/v1/drivers/{driver_name}"=>{:GET=>[:show_driver_details]},
 "/v1/drivers/{driver_name}/properties"=>{:GET=>[:show_driver_properties]},
 "/v1/drivers/{driver_name}/raid/logical_disk_properties"=>
  {:GET=>[:show_driver_logical_disk_properties]},
 "/v1/drivers/{driver_name}/vendor_passthru/methods"=>{:GET=>[:list_driver_method]},
 "/v1/drivers/{driver_name}/vendor_passthru?method={method_name}"=>
  {:GET=>[:call_a_driver_method]},
 "/v1/chassis/detail"=>{:GET=>[:list_chassis_with_details]},
 "/v1/chassis/{chassis_id}"=>
  {:GET=>[:show_chassis_details],
   :PATCH=>[:update_chassis],
   :DELETE=>[:delete_chassis]},
 "/v1/chassis"=>{:POST=>[:create_chassis], :GET=>[:list_chassis]},
 "/v1/lookup"=>{:GET=>[:agent_lookup]},
 "/v1/heartbeat/{node_ident}"=>{:POST=>[:agent_heartbeat]}}
  end
end
