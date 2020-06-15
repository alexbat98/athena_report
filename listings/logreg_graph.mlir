module {
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 41 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 22 : index, sym_name = "InitialNode_22", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 45 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 26 : index, sym_name = "ZeroInputNode_26", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 25 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 29 : index, sym_name = "LogLossOp_GroundTruthNode29", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 33 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 31 : index, sym_name = "LogLossOp_PredictedNode31", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 33 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 33 : index, sym_name = "LogLossOp_PredictedNode33", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 61 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 46 : index, sym_name = "ZeroInputNode_46", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 33 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 49 : index, sym_name = "SigmoidOp_DummySigmoidValueHolder49", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 69 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 52 : index, sym_name = "SigmoidOp_IdentityNode52", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 73 : index} : () -> tensor<3x1xf32>
    "ath_graph.alloc"(%0) : (tensor<3x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<3x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<3x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<3x1xf32>) -> ()
    ath_graph.return %0 : tensor<3x1xf32>
  }) {cluster_id = 0 : index, node_id = 62 : index, sym_name = "ZeroInputNode_62", type = () -> tensor<3x1xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 1 : index} : () -> tensor<1x3xf32>
    "ath_graph.alloc"(%0) : (tensor<1x3xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x3xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x3xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x3xf32>) -> ()
    ath_graph.return %0 : tensor<1x3xf32>
  }) {cluster_id = 0 : index, node_id = 66 : index, sym_name = "MatMulOp_ArgHolderNode66", type = () -> tensor<1x3xf32>} : () -> ()
  "ath_graph.node"() ( {
    %0 = "ath_graph.create_tensor"() {virtual_address = 97 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.invoke_loader"(%0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %0 : tensor<1x1xf32>
  }) {cluster_id = 0 : index, node_id = 68 : index, sym_name = "MatMulOp_IdentityNode68", type = () -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 101 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    %cst = constant 1.000000e+00 : f32
    %cst_0 = constant -1.000000e+00 : f32
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.add"(%arg1, %cst, %arg0, %cst_0, %c1_i64, %0) : (tensor<1x1xf32>, f32, tensor<1x1xf32>, f32, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 1 : index, node_id = 36 : index, sym_name = "LogLossOp_CombineNodeNumerator36", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 105 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.mul"(%arg0, %arg1, %c1_i64, %0) : (tensor<1x1xf32>, tensor<1x1xf32>, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 1 : index, node_id = 38 : index, sym_name = "LogLossOp_MulNodeDenominator38", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 109 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    %cst = constant 1.000000e+00 : f32
    %cst_0 = constant -1.000000e+00 : f32
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.add"(%arg1, %cst, %arg0, %cst_0, %c1_i64, %0) : (tensor<1x1xf32>, f32, tensor<1x1xf32>, f32, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 1 : index, node_id = 55 : index, sym_name = "SigmoidOp_CombineNode55", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x3xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 113 : index} : () -> tensor<3x1xf32>
    "ath_graph.alloc"(%0) : (tensor<3x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    %c0_i64 = constant 0 : i64
    %c3_i64 = constant 3 : i64
    %c1_i64_0 = constant 1 : i64
    %c1_i64_1 = constant 1 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<3x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x3xf32>) -> ()
    %1 = "ath_graph.matmul"(%c1_i64, %c0_i64, %c3_i64, %c1_i64_1, %c1_i64_0, %arg0, %arg1, %0) : (i64, i64, i64, i64, i64, tensor<1x3xf32>, tensor<1x1xf32>, tensor<3x1xf32>) -> tensor<3x1xf32>
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg0) : (tensor<1x3xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<3x1xf32>) -> ()
    ath_graph.return %1 : tensor<3x1xf32>
  }) {cluster_id = 1 : index, node_id = 71 : index, sym_name = "MatMulOp_MatMulNodeRight71", type = (tensor<1x3xf32>, tensor<1x1xf32>) -> tensor<3x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 125 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    %cst = constant 1.000000e+00 : f32
    %cst_0 = constant -1.000000e+00 : f32
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.add"(%arg0, %cst, %arg1, %cst_0, %c1_i64, %0) : (tensor<1x1xf32>, f32, tensor<1x1xf32>, f32, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 2 : index, node_id = 39 : index, sym_name = "LogLossOp_CombineNodeDenominator39", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 129 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.mul"(%arg1, %arg0, %c1_i64, %0) : (tensor<1x1xf32>, tensor<1x1xf32>, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 2 : index, node_id = 57 : index, sym_name = "SigmoidOp_MulNode57", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 133 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.divide"(%arg0, %arg1, %c1_i64, %0) : (tensor<1x1xf32>, tensor<1x1xf32>, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 3 : index, node_id = 41 : index, sym_name = "LogLossOp_DivideNode41", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 137 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.mul"(%arg1, %arg0, %c1_i64, %0) : (tensor<1x1xf32>, tensor<1x1xf32>, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 4 : index, node_id = 42 : index, sym_name = "LogLossOp_FinalMulNode42", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 141 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %cst = constant 1.000000e+00 : f32
    %cst_0 = constant 1.000000e+00 : f32
    %c1_i64 = constant 1 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.add"(%arg1, %cst, %arg0, %cst_0, %c1_i64, %0) : (tensor<1x1xf32>, f32, tensor<1x1xf32>, f32, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 5 : index, node_id = 43 : index, sym_name = "AddNodeLinker_43", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 145 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.mul"(%arg1, %arg0, %c1_i64, %0) : (tensor<1x1xf32>, tensor<1x1xf32>, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 6 : index, node_id = 58 : index, sym_name = "SigmoidOp_FinalMulNode58", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 149 : index} : () -> tensor<1x1xf32>
    "ath_graph.alloc"(%0) : (tensor<1x1xf32>) -> ()
    %cst = constant 1.000000e+00 : f32
    %cst_0 = constant 1.000000e+00 : f32
    %c1_i64 = constant 1 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.add"(%arg1, %cst, %arg0, %cst_0, %c1_i64, %0) : (tensor<1x1xf32>, f32, tensor<1x1xf32>, f32, i64, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.release"(%arg0) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<1x1xf32>) -> ()
    ath_graph.return %1 : tensor<1x1xf32>
  }) {cluster_id = 7 : index, node_id = 59 : index, sym_name = "AddNodeLinker_59", type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<3x1xf32>, %arg1: tensor<1x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 153 : index} : () -> tensor<3x1xf32>
    "ath_graph.alloc"(%0) : (tensor<3x1xf32>) -> ()
    %c1_i64 = constant 1 : i64
    %c3_i64 = constant 3 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<3x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<3x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<1x1xf32>) -> ()
    %1 = "ath_graph.mulconcat"(%arg1, %c1_i64, %arg0, %c3_i64, %0) : (tensor<1x1xf32>, i64, tensor<3x1xf32>, i64, tensor<3x1xf32>) -> tensor<3x1xf32>
    "ath_graph.release"(%arg0) : (tensor<3x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<1x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<3x1xf32>) -> ()
    ath_graph.return %1 : tensor<3x1xf32>
  }) {cluster_id = 8 : index, node_id = 73 : index, sym_name = "MatMulOp_FinalMulConcatNode73", type = (tensor<3x1xf32>, tensor<1x1xf32>) -> tensor<3x1xf32>} : () -> ()
  "ath_graph.node"() ( {
  ^bb0(%arg0: tensor<3x1xf32>, %arg1: tensor<3x1xf32>):  // no predecessors
    %0 = "ath_graph.create_tensor"() {virtual_address = 165 : index} : () -> tensor<3x1xf32>
    "ath_graph.alloc"(%0) : (tensor<3x1xf32>) -> ()
    %cst = constant 1.000000e+00 : f32
    %cst_0 = constant 1.000000e+00 : f32
    %c3_i64 = constant 3 : i64
    "ath_graph.lock"(%0) {lock_type = "read_write"} : (tensor<3x1xf32>) -> ()
    "ath_graph.lock"(%arg0) {lock_type = "read"} : (tensor<3x1xf32>) -> ()
    "ath_graph.lock"(%arg1) {lock_type = "read"} : (tensor<3x1xf32>) -> ()
    %1 = "ath_graph.add"(%arg1, %cst, %arg0, %cst_0, %c3_i64, %0) : (tensor<3x1xf32>, f32, tensor<3x1xf32>, f32, i64, tensor<3x1xf32>) -> tensor<3x1xf32>
    "ath_graph.release"(%arg0) : (tensor<3x1xf32>) -> ()
    "ath_graph.release"(%arg1) : (tensor<3x1xf32>) -> ()
    "ath_graph.release"(%0) : (tensor<3x1xf32>) -> ()
    ath_graph.return %1 : tensor<3x1xf32>
  }) {cluster_id = 9 : index, node_id = 74 : index, sym_name = "AddNodeLinker_74", type = (tensor<3x1xf32>, tensor<3x1xf32>) -> tensor<3x1xf32>} : () -> ()
  "ath_graph.graph"() ( {
    %0 = ath_graph.eval @InitialNode_22() : () -> tensor<1x1xf32>
    %1 = ath_graph.eval @ZeroInputNode_26() : () -> tensor<1x1xf32>
    %2 = ath_graph.eval @LogLossOp_GroundTruthNode29() : () -> tensor<1x1xf32>
    %3 = ath_graph.eval @LogLossOp_PredictedNode31() : () -> tensor<1x1xf32>
    %4 = ath_graph.eval @LogLossOp_PredictedNode33() : () -> tensor<1x1xf32>
    %5 = ath_graph.eval @ZeroInputNode_46() : () -> tensor<1x1xf32>
    %6 = ath_graph.eval @SigmoidOp_DummySigmoidValueHolder49() : () -> tensor<1x1xf32>
    %7 = ath_graph.eval @SigmoidOp_IdentityNode52() : () -> tensor<1x1xf32>
    %8 = ath_graph.eval @ZeroInputNode_62() : () -> tensor<3x1xf32>
    %9 = ath_graph.eval @MatMulOp_ArgHolderNode66() : () -> tensor<1x3xf32>
    %10 = ath_graph.eval @MatMulOp_IdentityNode68() : () -> tensor<1x1xf32>
    "ath_graph.barrier"() {clusterId = 0 : index} : () -> ()
    %11 = ath_graph.eval @LogLossOp_CombineNodeNumerator36(%2, %3) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %12 = ath_graph.eval @LogLossOp_MulNodeDenominator38(%3, %4) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %13 = ath_graph.eval @SigmoidOp_CombineNode55(%6, %7) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %14 = ath_graph.eval @MatMulOp_MatMulNodeRight71(%9, %10) : (tensor<1x3xf32>, tensor<1x1xf32>) -> tensor<3x1xf32>
    "ath_graph.barrier"() {clusterId = 1 : index} : () -> ()
    %15 = ath_graph.eval @LogLossOp_CombineNodeDenominator39(%3, %12) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    %16 = ath_graph.eval @SigmoidOp_MulNode57(%6, %13) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.barrier"() {clusterId = 2 : index} : () -> ()
    %17 = ath_graph.eval @LogLossOp_DivideNode41(%11, %15) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.barrier"() {clusterId = 3 : index} : () -> ()
    %18 = ath_graph.eval @LogLossOp_FinalMulNode42(%0, %17) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.barrier"() {clusterId = 4 : index} : () -> ()
    %19 = ath_graph.eval @AddNodeLinker_43(%1, %18) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.barrier"() {clusterId = 5 : index} : () -> ()
    %20 = ath_graph.eval @SigmoidOp_FinalMulNode58(%16, %19) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.barrier"() {clusterId = 6 : index} : () -> ()
    %21 = ath_graph.eval @AddNodeLinker_59(%5, %20) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    "ath_graph.barrier"() {clusterId = 7 : index} : () -> ()
    %22 = ath_graph.eval @MatMulOp_FinalMulConcatNode73(%14, %21) : (tensor<3x1xf32>, tensor<1x1xf32>) -> tensor<3x1xf32>
    "ath_graph.barrier"() {clusterId = 8 : index} : () -> ()
    %23 = ath_graph.eval @AddNodeLinker_74(%8, %22) : (tensor<3x1xf32>, tensor<3x1xf32>) -> tensor<3x1xf32>
    "ath_graph.barrier"() {clusterId = 9 : index} : () -> ()
    "ath_graph.graph_terminator"() : () -> ()
  }) {sym_name = "GradientGraph_20", type = () -> ()} : () -> ()
}
