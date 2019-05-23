with Ada.Finalization;
use Ada.Finalization;

package Containers with Pure is
--@description Base package for various containers
--@version 1.0.0

	Empty_Container : Exception;

	---------------
	-- Container --
	---------------

	type Container is abstract new Controlled with null record;

	procedure Clear(Self : in out Container) is abstract;
	--Clear the container of all contents

	function Is_Empty(Self : Container) return Boolean is abstract;
	--Is the container empty?

	function Length(Self : Container) return Natural is abstract;
	--Length of the container, or total number of nodes

	function Size(Self : Container) return Natural is abstract;
	--Size of the container, or total memory use

end Containers;
