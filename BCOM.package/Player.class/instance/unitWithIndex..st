accessing
unitWithIndex: index
units at: index ifAbsent:[^ nil.].
^ (units at: index). 