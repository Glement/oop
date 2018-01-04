auxilary
codeCoverage
|runner packages methods|
runner := TestRunner new.
runner open.
runner packageSearchUpdate: 'BCOM'.
runner selectAllPackages.
runner runAll.
packages := { 'BCOM' asPackage }.
methods := OrderedCollection new.
runner addMethodsUnderTestIn: packages to: methods.
runner collectCoverageFor: methods.