module {
  func @inp1(%arg0: !ath_rt.graph_handle) -> !ath_rt.event attributes {cluster_id = 0 : index, node_id = 3 : index} {
    %0 = "ath_graph.create_tensor"() {virtual_address = 1 : index} : () -> tensor<32xf32>
    %1 = "ath_rt.select_device"() {nodeId = 3 : index} : () -> !ath_rt.device
    "ath_rt.alloc"(%1, %0) : (!ath_rt.device, tensor<32xf32>) -> ()
    %2 = "ath_rt.select_device"() {nodeId = 3 : index} : () -> !ath_rt.device
    "ath_rt.lock"(%2, %0) {lock_type = "read_write"} : (!ath_rt.device, tensor<32xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<32xf32>) -> ()
    %3 = "ath_rt.select_device"() {nodeId = 3 : index} : () -> !ath_rt.device
    "ath_rt.release"(%3, %0) : (!ath_rt.device, tensor<32xf32>) -> ()
    %4 = "ath_rt.null_event"() : () -> !ath_rt.event
    return %4 : !ath_rt.event
  }
  func @inp2(%arg0: !ath_rt.graph_handle) -> !ath_rt.event attributes {cluster_id = 0 : index, node_id = 5 : index} {
    %0 = "ath_graph.create_tensor"() {virtual_address = 129 : index} : () -> tensor<32xf32>
    %1 = "ath_rt.select_device"() {nodeId = 5 : index} : () -> !ath_rt.device
    "ath_rt.alloc"(%1, %0) : (!ath_rt.device, tensor<32xf32>) -> ()
    %2 = "ath_rt.select_device"() {nodeId = 5 : index} : () -> !ath_rt.device
    "ath_rt.lock"(%2, %0) {lock_type = "read_write"} : (!ath_rt.device, tensor<32xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<32xf32>) -> ()
    %3 = "ath_rt.select_device"() {nodeId = 5 : index} : () -> !ath_rt.device
    "ath_rt.release"(%3, %0) : (!ath_rt.device, tensor<32xf32>) -> ()
    %4 = "ath_rt.null_event"() : () -> !ath_rt.event
    return %4 : !ath_rt.event
  }
  func @add(%arg0: !ath_rt.graph_handle) -> !ath_rt.event attributes {cluster_id = 1 : index, node_id = 8 : index} {
    %0 = "ath_graph.create_tensor"() {virtual_address = 129 : index} : () -> tensor<32xf32>
    %1 = "ath_graph.create_tensor"() {virtual_address = 1 : index} : () -> tensor<32xf32>
    %cst = constant 1.000000e+00 : f32
    %2 = "ath_graph.create_tensor"() {virtual_address = 257 : index} : () -> tensor<32xf32>
    %3 = "ath_rt.select_device"() {nodeId = 8 : index} : () -> !ath_rt.device
    "ath_rt.alloc"(%3, %2) : (!ath_rt.device, tensor<32xf32>) -> ()
    "ath_rt.lock"(%3, %1) {lock_type = "read"} : (!ath_rt.device, tensor<32xf32>) -> ()
    "ath_rt.lock"(%3, %0) {lock_type = "read"} : (!ath_rt.device, tensor<32xf32>) -> ()
    "ath_rt.lock"(%3, %2) {lock_type = "read_write"} : (!ath_rt.device, tensor<32xf32>) -> ()
    %8 = "ath_rt.null_event"() : () -> !ath_rt.event
    %out_tensor, %out_event = "ath_rt.launch"(%3, %8, %1, %cst, %0, %cst, %2) {global_size = [32], kernel = "fadd", local_size = [0]} : (!ath_rt.device, !ath_rt.event, tensor<32xf32>, f32, tensor<32xf32>, f32, tensor<32xf32>) -> (tensor<32xf32>, !ath_rt.event)
    "ath_rt.release"(%3, %2, %out_event) : (!ath_rt.device, tensor<32xf32>, !ath_rt.event) -> ()
    "ath_rt.release"(%3, %0, %out_event) : (!ath_rt.device, tensor<32xf32>, !ath_rt.event) -> ()
    "ath_rt.release"(%3, %1, %out_event) : (!ath_rt.device, tensor<32xf32>, !ath_rt.event) -> ()
    return %out_event : !ath_rt.event
  }
  func @mainGraph(%arg0: !ath_rt.graph_handle) {
    %0 = call @inp1(%arg0) : (!ath_rt.graph_handle) -> !ath_rt.event
    %1 = call @inp2(%arg0) : (!ath_rt.graph_handle) -> !ath_rt.event
    "ath_rt.barrier"(%0, %1) : (!ath_rt.event, !ath_rt.event) -> ()
    %2 = call @add(%arg0) : (!ath_rt.graph_handle) -> !ath_rt.event
    "ath_rt.barrier"(%2) : (!ath_rt.event) -> ()
    "ath_rt.barrier"() : () -> ()
    return
  }
}

