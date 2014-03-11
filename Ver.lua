assert(ZygorGuidesViewer,"Zygor Guides Viewer failed to load.")
local name,_=...
ZygorGuidesViewer.revision = tonumber(string.sub("$Revision: 8358 $", 12, -3))
ZygorGuidesViewer.version = GetAddOnMetadata(name,"version") .. "." .. ZygorGuidesViewer.revision
ZygorGuidesViewer.date = string.sub("$Date: 2014-03-10 16:05:05 -0500 (Mon, 10 Mar 2014) $", 8, 17)
--2014/03/10 17:03:01
 