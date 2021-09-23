PROTOC = protoc
COMPILE.proto = $(call echo_cmd,PROTOC $<) $(PROTOC) $(PROTOCFLAGS) \
    --cpp_out=$(@D) --dependency_out=$(@D)/$(<F).d --proto_path=$(<D) $<

define user_skeleton
.PRECIOUS: $(OBJPATH)/%.pb.cc $(OBJPATH)/%.pb.h
$(OBJPATH)/%.pb.cc $(OBJPATH)/%.pb.h &: $(PROTO_DIR)/%.proto | $(OBJPATH)
	$(value COMPILE.proto)
-include $(wildcard $(OBJPATH)/*.proto.d)
endef
