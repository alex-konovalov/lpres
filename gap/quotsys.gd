############################################################################
##
#W quotsys.gd			NQL				René Hartung
##
#H   @(#)$Id: quotsys.gd,v 1.3 2009/05/06 12:56:31 gap Exp $
##
Revision.("nql/gap/quotsys_gd"):=
  "@(#)$Id: quotsys.gd,v 1.3 2009/05/06 12:56:31 gap Exp $";


############################################################################
##
#F  SmallerQuotientSystem ( <Q>, <int> )
## 
## Computes a nilpotent quotient system for G/gamma_i(G) if a nilpotent 
## quotient system for G/gamma_j(G) is known, i<j.
##
DeclareGlobalFunction( "SmallerQuotientSystem" );

############################################################################
##
#F  LPRES_SaveQuotientSystem( <Q>, <String> )
##
## stores the quotient system <Q> in the file <String>.
##
DeclareGlobalFunction( "LPRES_SaveQuotientSystem" );

############################################################################
##
#F  LPRES_SaveQuotientSystemCover( <Q>, <String> )
##
DeclareGlobalFunction( "LPRES_SaveQuotientSystemCover" );
