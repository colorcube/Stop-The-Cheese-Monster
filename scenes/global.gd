
extends Node

func spatial_quat_slerp(spatial, wish_quat, rate):
	var transform = spatial.get_transform()
	var quat = Quat(transform.basis)
	quat = quat.slerp(wish_quat, rate)
	transform.basis = Basis(quat)
	spatial.set_transform(transform)