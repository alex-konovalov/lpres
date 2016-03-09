#############################################################################
##
#W    read.g            The GAP 4 package LPRES                    René Hartung
##
#H   @(#)$Id: read.g,v 1.7 2010/03/17 13:09:28 gap Exp $
##

# problem with polycyclic's Igs vs. Cgs
USE_CANONICAL_PCS := true;

BindGlobal( "LPRES_TEST_ALL", false);

# coset enumeration for (finite index) subgroups of LpGroups
LPRES_TCSTART := 2;
if TestPackageAvailability( "ACE", "5.0" ) <> fail then
  LPRES_CosetEnumerator := function( h )
    local f, rels, gens;

    f    := FreeGeneratorsOfFpGroup( Parent( h ) );
    rels := RelatorsOfFpGroup( Parent( h ) );
    gens := List( GeneratorsOfGroup( h ), UnderlyingElement );
    return( ACECosetTable( f, rels, gens : silent, hard, max := 10^8, Wo := 10^8 ) );
    end;
else
  LPRES_CosetEnumerator := CosetTableInWholeGroup;
fi;


ReadPackage( LPRESPkgName, "gap/misc.gi");
ReadPackage( LPRESPkgName, "gap/hnf.gi");
ReadPackage( LPRESPkgName, "gap/initqs.gi");
ReadPackage( LPRESPkgName, "gap/homs.gi");
ReadPackage( LPRESPkgName, "gap/tails.gi");
ReadPackage( LPRESPkgName, "gap/consist.gi");
ReadPackage( LPRESPkgName, "gap/cover.gi");
ReadPackage( LPRESPkgName, "gap/endos.gi");
ReadPackage( LPRESPkgName, "gap/buildnew.gi");
ReadPackage( LPRESPkgName, "gap/extqs.gi");
ReadPackage( LPRESPkgName, "gap/quotsys.gi");
ReadPackage( LPRESPkgName, "gap/nq.gi");
ReadPackage( LPRESPkgName, "gap/nq_non.gi");
ReadPackage( LPRESPkgName, "gap/lpres.gi");
ReadPackage( LPRESPkgName, "gap/subgrps.gi" );
ReadPackage( LPRESPkgName, "gap/examples.gi");

# approximating the Schur multiplier
ReadPackage( LPRESPkgName, "gap/schumu/schumu.gi" );

# approximating the outer automorphism group
if TestPackageAvailability( "AutPGrp", "1.4" ) <> fail then 
  ReadPackage( LPRESPkgName, "gap/misc/autseq.gi" );
fi;

# parallel version of LPRES's nilpotent quotient algorithm
if TestPackageAvailability( "ParGap", "1.1.2" ) <> fail then
  LPRESPar_StoreResults := true;
  ReadPackage( LPRESPkgName, "gap/pargap/misc.gi" );
  ReadPackage( LPRESPkgName, "gap/pargap/consist.gi" );
  ReadPackage( LPRESPkgName, "gap/pargap/induce.gi" );
  ReadPackage( LPRESPkgName, "gap/pargap/pargap.gi" );
  ReadPackage( LPRESPkgName, "gap/pargap/storing.gi" );
fi;

