if exists("b:current_syntax")
    finish
endif

" keywords
syntax keyword qeControlKW calculation title verbosity restart_mode wf_collect nstep iprint tstress tprnfor dt outdir wfcdir prefix lkpoint_dir max_seconds etot_conv_thr forc_conv_thr disk_io pseudo_dir tefield dipfield lelfield nberrycyc lorbm lberry gdir nppstr lfcpopt monopole
syntax keyword qeSystemKW ibrav celldm a b c cosab cosac cosbc nat ntyp nbnd tot_charge tot_magnetization starting_magnetization ecutwfc ecutrho ecutfock nr1 nr2 nr3 nr1s nr2s nr3s nosym nosym_evc noinv no_t_rev force_symmorphic use_all_frac occupations one_atom_occupations starting_spin_angle degauss smearing nspin noncolin ecfixed qcutz q2sigma input_dft exx_fraction screening_parameter exxdiv_treatment x_gamma_extrapolation ecutvcut nqx1 nqx2 nqx3 lda_plus_u lda_plus_u_kind hubbard_u hubbard_j0 hubbard_alpha hubbard_beta hubbard_j(i,ityp) starting_ns_eigenvalue(m,ispin,i) u_projection_type edir emaxpos eopreg eamp angle1 angle2 constrained_magnetization fixed_magnetization lambda report lspinorb assume_isolated esm_bc esm_w esm_efield esm_nfit fcp_mu vdw_corr london london_s6 london_c6 london_rvdw london_rcut ts_vdw_econv_thr ts_vdw_isolated xdm xdm_a1 xdm_a2 space_group uniqueb origin_choice rhombohedral zmon realxz block block_1 block_2 block_height
syntax keyword qeElectronsKW electron_maxstep scf_must_converge conv_thr adaptive_thr conv_thr_init conv_thr_multi mixing_mode mixing_beta mixing_ndim mixing_fixed_ns diagonalization ortho_para diago_thr_init diago_cg_maxiter diago_david_ndim diago_full_acc efield efield_cart efield_phase startingpot startingwfc tqr
syntax keyword qeIonsKW ion_dynamics ion_positions pot_extrapolation wfc_extrapolation remove_rigid_rot ion_temperature tempw tolp delta_t nraise refold_pos upscale bfgs_ndim trust_radius_max trust_radius_min trust_radius_ini w_1 w_2
syntax keyword qeCellKW cell_dynamics press wmass cell_factor press_conv_thr cell_dofree
syntax keyword qeATOMIC_POSITIONSKW alat bohr angstrom crystal crystal_sg
syntax keyword qeK_POINTSKW tpiba automatic crystal gamma tpiba_b crystal_b tpiba_c crystal_c
syntax keyword qeCELL_PARAMETERSKW alat bohr angstrom
highlight link qeControlKW Keyword
highlight link qeSystemKW Keyword
highlight link qeElectronsKW Keyword
highlight link qeIonsKW Keyword
highlight link qeCellKW Keyword
highlight link qeATOMIC_POSITIONSKW Keyword
highlight link qeK_POINTSKW Keyword
highlight link qeCELL_PARAMETERSKW Keyword

" namelists and cards
syntax match qeNML "\v\&[cC][oO][nN][tT][rR][oO][lL]\s*$"
syntax match qeNML "\v\&[sS][yY][sS][tT][eE][mM]\s*$"
syntax match qeNML "\v\&[eE][lL][eE][cC][tT][rR][oO][nN][sS]\s*$"
syntax match qeNML "\v\&[iI][oO][nN][sS]\s*$"
syntax match qeNML "\v\&[cC][eE][lL][lL]\s*$"
syntax match qeNML "^\s*/\s*$"
syntax keyword qeCARD ATOMIC_SPECIES ATOMIC_POSITIONS K_POINTS CELL_PARAMETERS CONSTRAINTS OCCUPATIONS ATOMIC_FORCES
highlight link qeNML Include
highlight link qeCARD Include

" comments
syntax match qeComment "\v!.*$"
highlight link qeComment Comment

" operators
syntax match qeOperator "\v\*"
syntax match qeOperator "\v/"
syntax match qeOperator "\v\+"
syntax match qeOperator "\v-"
syntax match qeOperator "\v\="
highlight link qeOperator Operator

" strings
syntax region qeString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region qeString start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link qeString String

" numbers
syntax match qeNumber '\s\d\+'
syntax match qeNumber '\s[-+]\d\+'
syntax match qeNumber '\s\d\+.\d*'
syntax match qeNumber '\s[-+]\d\+.\d*'
syntax match qeNumber '\s[-+]\=\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match qeNumber '\s\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match qeNumber '\s[-+]\=\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'
syntax match qeNumber '\s\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'
highlight link qeNumber Constant

" boolean
syntax match qeBoolean '\.[tT][rR][uU][eE]\.'
syntax match qeBoolean '\.[fF][aA][lL][sS][eE]\.'
highlight link qeBoolean Boolean

" ions
syntax match qeIon '\sH\d\s'
syntax match qeIon '\sH\s'
syntax match qeIon '\sHe\d\s'
syntax match qeIon '\sHe\s'
syntax match qeIon '\sLi\d\s'
syntax match qeIon '\sLi\s'
syntax match qeIon '\sBe\d\s'
syntax match qeIon '\sBe\s'
syntax match qeIon '\sB\d\s'
syntax match qeIon '\sB\s'
syntax match qeIon '\sC\d\s'
syntax match qeIon '\sC\s'
syntax match qeIon '\sN\d\s'
syntax match qeIon '\sN\s'
syntax match qeIon '\sO\d\s'
syntax match qeIon '\sO\s'
syntax match qeIon '\sF\d\s'
syntax match qeIon '\sF\s'
syntax match qeIon '\sNe\d\s'
syntax match qeIon '\sNe\s'
syntax match qeIon '\sNa\d\s'
syntax match qeIon '\sNa\s'
syntax match qeIon '\sMg\d\s'
syntax match qeIon '\sMg\s'
syntax match qeIon '\sAl\d\s'
syntax match qeIon '\sAl\s'
syntax match qeIon '\sSi\d\s'
syntax match qeIon '\sSi\s'
syntax match qeIon '\sP\d\s'
syntax match qeIon '\sP\s'
syntax match qeIon '\sS\d\s'
syntax match qeIon '\sS\s'
syntax match qeIon '\sCl\d\s'
syntax match qeIon '\sCl\s'
syntax match qeIon '\sAr\d\s'
syntax match qeIon '\sAr\s'
syntax match qeIon '\sK\d\s'
syntax match qeIon '\sK\s'
syntax match qeIon '\sCa\d\s'
syntax match qeIon '\sCa\s'
syntax match qeIon '\sSc\d\s'
syntax match qeIon '\sSc\s'
syntax match qeIon '\sTi\d\s'
syntax match qeIon '\sTi\s'
syntax match qeIon '\sV\d\s'
syntax match qeIon '\sV\s'
syntax match qeIon '\sCr\d\s'
syntax match qeIon '\sCr\s'
syntax match qeIon '\sMn\d\s'
syntax match qeIon '\sMn\s'
syntax match qeIon '\sFe\d\s'
syntax match qeIon '\sFe\s'
syntax match qeIon '\sCo\d\s'
syntax match qeIon '\sCo\s'
syntax match qeIon '\sNi\d\s'
syntax match qeIon '\sNi\s'
syntax match qeIon '\sCu\d\s'
syntax match qeIon '\sCu\s'
syntax match qeIon '\sZn\d\s'
syntax match qeIon '\sZn\s'
syntax match qeIon '\sGa\d\s'
syntax match qeIon '\sGa\s'
syntax match qeIon '\sGe\d\s'
syntax match qeIon '\sGe\s'
syntax match qeIon '\sAs\d\s'
syntax match qeIon '\sAs\s'
syntax match qeIon '\sSe\d\s'
syntax match qeIon '\sSe\s'
syntax match qeIon '\sBr\d\s'
syntax match qeIon '\sBr\s'
syntax match qeIon '\sKr\d\s'
syntax match qeIon '\sKr\s'
syntax match qeIon '\sRb\d\s'
syntax match qeIon '\sRb\s'
syntax match qeIon '\sSr\d\s'
syntax match qeIon '\sSr\s'
syntax match qeIon '\sY\d\s'
syntax match qeIon '\sY\s'
syntax match qeIon '\sZr\d\s'
syntax match qeIon '\sZr\s'
syntax match qeIon '\sNb\d\s'
syntax match qeIon '\sNb\s'
syntax match qeIon '\sMo\d\s'
syntax match qeIon '\sMo\s'
syntax match qeIon '\sTc\d\s'
syntax match qeIon '\sTc\s'
syntax match qeIon '\sRu\d\s'
syntax match qeIon '\sRu\s'
syntax match qeIon '\sRh\d\s'
syntax match qeIon '\sRh\s'
syntax match qeIon '\sPd\d\s'
syntax match qeIon '\sPd\s'
syntax match qeIon '\sAg\d\s'
syntax match qeIon '\sAg\s'
syntax match qeIon '\sCd\d\s'
syntax match qeIon '\sCd\s'
syntax match qeIon '\sIn\d\s'
syntax match qeIon '\sIn\s'
syntax match qeIon '\sSn\d\s'
syntax match qeIon '\sSn\s'
syntax match qeIon '\sSb\d\s'
syntax match qeIon '\sSb\s'
syntax match qeIon '\sTe\d\s'
syntax match qeIon '\sTe\s'
syntax match qeIon '\sI\d\s'
syntax match qeIon '\sI\s'
syntax match qeIon '\sXe\d\s'
syntax match qeIon '\sXe\s'
syntax match qeIon '\sCs\d\s'
syntax match qeIon '\sCs\s'
syntax match qeIon '\sBa\d\s'
syntax match qeIon '\sBa\s'
syntax match qeIon '\sLa\d\s'
syntax match qeIon '\sLa\s'
syntax match qeIon '\sCe\d\s'
syntax match qeIon '\sCe\s'
syntax match qeIon '\sPr\d\s'
syntax match qeIon '\sPr\s'
syntax match qeIon '\sNd\d\s'
syntax match qeIon '\sNd\s'
syntax match qeIon '\sPm\d\s'
syntax match qeIon '\sPm\s'
syntax match qeIon '\sSm\d\s'
syntax match qeIon '\sSm\s'
syntax match qeIon '\sEu\d\s'
syntax match qeIon '\sEu\s'
syntax match qeIon '\sGd\d\s'
syntax match qeIon '\sGd\s'
syntax match qeIon '\sTb\d\s'
syntax match qeIon '\sTb\s'
syntax match qeIon '\sDy\d\s'
syntax match qeIon '\sDy\s'
syntax match qeIon '\sHo\d\s'
syntax match qeIon '\sHo\s'
syntax match qeIon '\sEr\d\s'
syntax match qeIon '\sEr\s'
syntax match qeIon '\sTm\d\s'
syntax match qeIon '\sTm\s'
syntax match qeIon '\sYb\d\s'
syntax match qeIon '\sYb\s'
syntax match qeIon '\sLu\d\s'
syntax match qeIon '\sLu\s'
syntax match qeIon '\sHf\d\s'
syntax match qeIon '\sHf\s'
syntax match qeIon '\sTa\d\s'
syntax match qeIon '\sTa\s'
syntax match qeIon '\sW\d\s'
syntax match qeIon '\sW\s'
syntax match qeIon '\sRe\d\s'
syntax match qeIon '\sRe\s'
syntax match qeIon '\sOs\d\s'
syntax match qeIon '\sOs\s'
syntax match qeIon '\sIr\d\s'
syntax match qeIon '\sIr\s'
syntax match qeIon '\sPt\d\s'
syntax match qeIon '\sPt\s'
syntax match qeIon '\sAu\d\s'
syntax match qeIon '\sAu\s'
syntax match qeIon '\sHg\d\s'
syntax match qeIon '\sHg\s'
syntax match qeIon '\sTl\d\s'
syntax match qeIon '\sTl\s'
syntax match qeIon '\sPb\d\s'
syntax match qeIon '\sPb\s'
syntax match qeIon '\sBi\d\s'
syntax match qeIon '\sBi\s'
syntax match qeIon '\sPo\d\s'
syntax match qeIon '\sPo\s'
syntax match qeIon '\sAt\d\s'
syntax match qeIon '\sAt\s'
syntax match qeIon '\sRn\d\s'
syntax match qeIon '\sRn\s'
syntax match qeIon '\sFr\d\s'
syntax match qeIon '\sFr\s'
syntax match qeIon '\sRa\d\s'
syntax match qeIon '\sRa\s'
syntax match qeIon '\sAc\d\s'
syntax match qeIon '\sAc\s'
syntax match qeIon '\sTh\d\s'
syntax match qeIon '\sTh\s'
syntax match qeIon '\sPa\d\s'
syntax match qeIon '\sPa\s'
syntax match qeIon '\sU\d\s'
syntax match qeIon '\sU\s'
syntax match qeIon '\sNp\d\s'
syntax match qeIon '\sNp\s'
syntax match qeIon '\sPu\d\s'
syntax match qeIon '\sPu\s'
syntax match qeIon '\sAm\d\s'
syntax match qeIon '\sAm\s'
syntax match qeIon '\sCm\d\s'
syntax match qeIon '\sCm\s'
syntax match qeIon '\sBk\d\s'
syntax match qeIon '\sBk\s'
syntax match qeIon '\sCf\d\s'
syntax match qeIon '\sCf\s'
syntax match qeIon '\sEs\d\s'
syntax match qeIon '\sEs\s'
syntax match qeIon '\sFm\d\s'
syntax match qeIon '\sFm\s'
syntax match qeIon '\sMd\d\s'
syntax match qeIon '\sMd\s'
syntax match qeIon '\sNo\d\s'
syntax match qeIon '\sNo\s'
syntax match qeIon '\sLr\d\s'
syntax match qeIon '\sLr\s'
syntax match qeIon '\sRf\d\s'
syntax match qeIon '\sRf\s'
syntax match qeIon '\sDb\d\s'
syntax match qeIon '\sDb\s'
syntax match qeIon '\sSg\d\s'
syntax match qeIon '\sSg\s'
syntax match qeIon '\sBh\d\s'
syntax match qeIon '\sBh\s'
syntax match qeIon '\sHs\d\s'
syntax match qeIon '\sHs\s'
syntax match qeIon '\sMt\d\s'
syntax match qeIon '\sMt\s'
syntax match qeIon '\sDs\d\s'
syntax match qeIon '\sDs\s'
syntax match qeIon '\sRg\d\s'
syntax match qeIon '\sRg\s'
syntax match qeIon '\sCn\d\s'
syntax match qeIon '\sCn\s'
syntax match qeIon '\sNh\d\s'
syntax match qeIon '\sNh\s'
syntax match qeIon '\sFl\d\s'
syntax match qeIon '\sFl\s'
syntax match qeIon '\sMc\d\s'
syntax match qeIon '\sMc\s'
syntax match qeIon '\sLv\d\s'
syntax match qeIon '\sLv\s'
syntax match qeIon '\sTs\d\s'
syntax match qeIon '\sTs\s'
syntax match qeIon '\sOg\d\s'
syntax match qeIon '\sOg\s'
highlight link qeIon Tag

let b:current_syntax = "espresso"
