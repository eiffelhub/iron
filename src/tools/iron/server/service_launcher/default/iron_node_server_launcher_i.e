note
	description: "Summary description for {IRON_NODE_SERVER_LAUNCHER_I}."
	author: ""
	date: "$Date: 2015-06-16 16:05:18 +0200 (mar., 16 juin 2015) $"
	revision: "$Revision: 97476 $"

deferred class
	IRON_NODE_SERVER_LAUNCHER_I [G -> WSF_EXECUTION create make end]

feature {WSF_SERVICE} -- Launcher

	launch (opts: detachable WSF_SERVICE_LAUNCHER_OPTIONS)
		local
			launcher: WSF_DEFAULT_SERVICE_LAUNCHER [G]
		do
			create launcher.make_and_launch (opts)
		end

end

