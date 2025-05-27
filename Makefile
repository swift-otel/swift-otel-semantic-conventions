# Xcode workspace with main package and generator
# -----------------------------------------------------------------------------
WORKSPACE = swift-otel-semantic-conventions.xcworkspace
WORKSPACE_CONTENTS = $(WORKSPACE)/contents.xcworkspacedata

workspace: $(WORKSPACE_CONTENTS)  # Generate and open Xcode workspace including examples.
	open $(WORKSPACE)

define contents_xcworkspacedata
<?xml version="1.0" encoding="UTF-8"?>
<Workspace version="1.0">
	<FileRef location="group:."></FileRef>
	<FileRef location="group:Generator"></FileRef>
</Workspace>
endef
export contents_xcworkspacedata

$(WORKSPACE_CONTENTS): Makefile
	rm -rf $(WORKSPACE)
	mkdir -p $(dir $@)
	echo "$$contents_xcworkspacedata" > $@

.DELETE_ON_ERROR:
