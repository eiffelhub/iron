note
	description: "Sorter interface specific for iron."
	date: "$Date: 2015-12-29 23:40:59 +0100 (mar., 29 déc. 2015) $"
	revision: "$Revision: 98345 $"

class
	IRON_SORTER [G]

create
	make

feature {NONE} -- Initialization

	make (a_name: READABLE_STRING_GENERAL; a_sorter: like sorter)
		do
			sorter := a_sorter
			create name.make_from_string_general (a_name)
		end

feature -- Access

	name: IMMUTABLE_STRING_32

	is_reversed: BOOLEAN

	sorter: SORTER [G]

feature -- Element change

	set_is_reversed (b: BOOLEAN)
		do
			is_reversed := b
		end

note
	copyright: "Copyright (c) 1984-2015, Eiffel Software"
	license: "GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options: "http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
