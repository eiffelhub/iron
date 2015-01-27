note
	description: "[
			Objects that ...
		]"
	author: "$Author: jfiat $"
	date: "$Date: 2014-03-19 17:58:52 +0100 (mer., 19 mars 2014) $"
	revision: "$Revision: 94640 $"

class
	DEP

create
	make

feature {NONE} -- Initialization

	make
			-- Initialize `Current'.
		do
			create fake.make
		end

feature -- Access

	fake: FAKE

feature -- Change

feature {NONE} -- Implementation

invariant
--	invariant_clause: True 

end
