module {
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 1 : index} : () -> tensor<32xf32>
    "ath_graph.alloc"(%0) : (tensor<32xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<32xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<32xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<32xf32>) -> ()
    ath_graph.return %0 : tensor<32xf32>
  }) {cluster_id = 0 : index, node_id = 3 : index, sym_name = "inp1", type = () -> tensor<32xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 129 : index} : () -> tensor<32xf32>
    "ath_graph.alloc"(%0) : (tensor<32xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<32xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<32xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<32xf32>) -> ()
    ath_graph.return %0 : tensor<32xf32>
  }) {cluster_id = 0 : index, node_id = 5 : index, sym_name = "inp2", type = () -> tensor<32xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<32xf32>, %arg1: tensor<32xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 257 : index} : () -> tensor<32xf32>
    "ath_graph.alloc"(%0) : (tensor<32xf32>) -> ()
    %cst = constant 1.000000e+00 : f32
    %cst_0 = constant 1.000000e+00 : f32
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<32xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<32xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<32xf32>) -> ()
    %1 = "ath_graph.add"(%arg0, %cst, %arg1, %cst_0, %0) : (tensor<32xf32>, f32, tensor<32xf32>, f32, tensor<32xf32>) -> tensor<32xf32>
    "ath_graph.release"(%0) : (tensor<32xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<32xf32>) -> ()
    "ath_graph.release"(%arg0) : (tensor<32xf32>) -> ()
    ath_graph.return %1 : tensor<32xf32>
  }) {cluster_id = 1 : index, node_id = 8 : index, sym_name = "add", type = (tensor<32xf32>, tensor<32xf32>) -> tensor<32xf32>} : () -> ()
  "ath_graph.graph"() ( {
    %0 = ath_graph.eval @inp1() : () -> tensor<32xf32>
    %1 = ath_graph.eval @inp2() : () -> tensor<32xf32>
    "ath_graph.barrier"() {clusterId = 0 : index} : () -> ()
    %2 = ath_graph.eval @add(%0, %1) : (tensor<32xf32>, tensor<32xf32>) -> tensor<32xf32>
    "ath_graph.barrier"() {clusterId = 1 : index} : () -> ()
    "ath_graph.barrier"() {clusterId = 2 : index} : () -> ()
    "ath_graph.graph_terminator"() : () -> ()
  }) {sym_name = "mainGraph", type = () -> ()} : () -> ()
}
