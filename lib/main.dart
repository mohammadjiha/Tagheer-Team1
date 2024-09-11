import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/view/Screen/Auth/auth.dart';
import 'package:tageer/view/Screen/Biologyplan/Screen/biologyplan.dart';
import 'package:tageer/view/Screen/Biologyplan/Screen/planimagebio.dart';
import 'package:tageer/view/Screen/Choose%20your%20specialty/Screen/choose_specialty.dart';
import 'package:tageer/view/Screen/Home/Screen/home_screen.dart';
import 'package:tageer/view/Screen/Login&Register/Screen/start.dart';
import 'package:tageer/view/Screen/Login/body/body_login.dart';
import 'package:tageer/view/Screen/Register/SinUp_screen/sinup_screen.dart';
import 'package:tageer/view/Screen/Student_plan/Screen/student_plan.dart';
import 'package:tageer/view/Screen/Student_plan2/Screen/college_screen.dart';
import 'package:tageer/view/Screen/Student_plan2/Screen/imageplan.dart';
import 'package:tageer/view/Screen/Student_plan2/Screen/student_plan2.dart';
import 'package:tageer/view/Screen/Student_plan2/widget/plan.dart';
import 'package:tageer/view/Screen/alfareg/screen/team.dart';
import 'package:tageer/view/Screen/anonymously_login/anonymously_login.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_2/Anatomy%20of%20a%20plantt/screen/Anatomy_of_a_plantt.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_2/Basics%20of%20botany/screen/Basics_of_botany.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_2/Biochemistry/screen/Biochemistry.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_2/Cell%20biology/screen/Cell_biology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_2/General%20microbiology/screen/General_microbiology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_2/Invertebrates/screen/Invertebrates.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_2/Practical%20life%20sciences%202/screen/Practical_life_sciences2.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_2/Vertebrates/screen/Vertebrates.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Animal%20physiology/screen/Animal_physiology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Applied%20structural%20biology/screen/Applied_structural_biology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Biotechnology/screen/Biotechnology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/DNA%20techniques/screen/DNA_techniques.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Gene%20expression/screen/Gene_expression.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Material%20separation%20techniques/screen/Material_separation_techniques.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Medicinal%20plants/screen/Medicinal_plants.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Molecular%20biology/screen/Molecular_biology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Plant%20biology/screen/Plant_biology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Plant%20biotechnology/screen/Plant_biotechnology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Plant%20physiology/screen/Plant_physiology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Vibrant%20environment/screen/Vibrant_environment.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_4/Experimental%20design%20and%20analysis/screen/Experimental_design_and_analysis.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_4/Hematology/screen/Hematology.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_4/Modeling%20of%20biological%20systems/screen/Modeling_of_biological_systems.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_4/Reactors/screen/Reactors.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_4/computer%20applications/screen/computer_applications.dart';
import 'package:tageer/view/Screen/biology_student/item/2/itemsecondbio.dart';
import 'package:tageer/view/Screen/biology_student/item/3/itemtherdbio.dart';
import 'package:tageer/view/Screen/biology_student/item/4/itemforthbio.dart';
import 'package:tageer/view/Screen/biology_student/screen/category_files_bio.dart';
import 'package:tageer/view/Screen/files_screen/screen/categre_files.dart';
import 'package:tageer/view/Screen/files_screen/screen/item.dart';
import 'package:tageer/view/Screen/forget_pas/forget_pas.dart';
import 'package:tageer/view/Screen/gpi/addcoursescreen.dart';
import 'package:tageer/view/Screen/gpi/gpi.dart';
import 'package:tageer/view/Screen/mathematics_plan/Screen/mathematics.dart';
import 'package:tageer/view/Screen/mathematics_plan/Screen/planmath.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Calc%203/screen/calc3_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Euclidean%20geometry/screen/euclidean_geometry_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Linear%20algebra%201/screen/linear_algebra1_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Real%20analysis%201/screen/real_analysis1_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/hazm%20barmajiat%20riadia/screen/hazm_barmajiat_riadia_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/probability_theory/screen/probability_theory.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/usus%20riadiaat/screen/usus_riadiaat_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_3/Abstract%20algebra%201/screen/abstract_algebra1_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_3/Linear%20programming/screen/linear_programming_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_3/Number%20theory/screen/number_theory_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_3/Partial%20differential%20equations/screen/partial_differential_equations_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_3/Real%20analysis%202/screen/real_analysis2_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_3/Statement%20theory/screen/statement_theory_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_3/Statistical%20methods/screen/statistical_methods_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Advance/screen/advance_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Complex%20analysis/screen/complex_analysis_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Compositions/screen/compositions_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Dali%20analysis/screen/dali_analysis_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Design%20and%20analysis/screen/design_and_analysis_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Dynamic%20systems/screen/dynamic_systems_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/History%20of%20mathematics/screen/history_of_mathematics_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Integral%20equations/screen/Integral_equations_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Mathematical%20statistics/screen/mathematical_statistics_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Non%20Euclidean%20geometry/screen/non_euclidean_geometry_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Numerical%20Analysis/screen/numerical_analysis_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Preview%20methods/screen/preview_methods_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Topology%201/screen/topology1_screend.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_4/Topology%202/screen/topology2_screen.dart';
import 'package:tageer/view/Screen/mathematucs_student/item/2/itemsecondmath.dart';
import 'package:tageer/view/Screen/mathematucs_student/item/3/itemtheredmath.dart';
import 'package:tageer/view/Screen/mathematucs_student/item/4/itemforthmath.dart';
import 'package:tageer/view/Screen/mathematucs_student/screen/categoryfilesmath.dart';
import 'package:tageer/view/Screen/physics_Student/Screen/categoryfilesphysisc.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Computation%20Physics/Screen/computation_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Electronics/screen/electronics_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/LapPhsiscs/screen/lapphisisc.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Math%201/screen/math1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Math%202/Screen/math2_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Modern%201/Screen/modern1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Modern%202/Screen/modern2_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/KAHRO%201/Screen/KAHRO1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/KAHRO%202/Screen/KAHRO2_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Lab%20Advance%201/Screen/labadvance1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Medical/Screen/Medical_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Quantum%201/Screen/Quantum1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Quantum%202/Screen/Quantum2_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Thermo/Screen/Thermo_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Astronomy/Screen/Astronomy_Screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Classical/Screen/Classical_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Lab%20Advance%202/Screen/LabAdvance2_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Lab%20applications/Screen/Labapplications_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Laser/Screen/Laser_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Materia/Screen/Materia_Screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Nano/Screen/Nano_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Radiation/Screen/Radiation_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Relativity/Screen/Relativity_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Solid/Screen/Solid_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/dhuriya/Screen/dhuriya_screen.dart';
import 'package:tageer/view/Screen/physics_Student/item/2/itemsecondphsiscs.dart';
import 'package:tageer/view/Screen/physics_Student/item/3/item_therd_phsiscs.dart';
import 'package:tageer/view/Screen/physics_Student/item/4/item_foarh_phsiscs.dart';
import 'package:tageer/view/Screen/physics_plan/Screen/physics_plan.dart';
import 'package:tageer/view/Screen/physics_plan/Screen/plan_physcs.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Item_fourth.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Chemistry_alnawatij/Screen/alnawatij_Screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Environmental%20analysis/Screen/environmental_analysis_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Hetero/Screen/hetero_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/InOrganic3/Screen/inorganic3.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Organic3/screen/organic3_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Polymer/Screen/polymer_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Special%20analytical/Screen/special_analytical_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/industrial_analyses/screen/industrial_analyses_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/organometallic/screen/organometallic_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/sbishil%20eudwia/screen/sbishil_eudwia_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Lap_Organac/screen/lap_organac.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Organic%202/screen/screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Organic/screen/organic.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Vizcal1/screen/vizcal1.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/analytical/screen/analytical.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/inorganic1/screen/inorganic1.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/lap_analytical/screen/lap_analytical.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/widget/itme_second.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Automated%20analysis%201/screen/automated_analysis_1.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Automated%20analysis%202/screen/automated_analysis_2.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Lap%20Automated%20abalysis/screen/lap_automated_abalysis.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/LapVizcal/screen/lap_vizcal.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Lap_InOrganc/screen/lapinorganc.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Vizcal%202/Screen/Vizcal2.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Vizcal%203/screen/Vizcal3.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/inorganic2/screen/inorganic2_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/item_therd.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/lab_sys/screen/lab_sys.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/spectro/screen/spectro.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Bio/screen/bioo.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Calc1/Screen/calc.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Calc2/screen/calc2.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Dave/screen/dave.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Physics%201/screen/Physics1.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Physics%202/screen/Physics2_screen.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/c++/screen/c++.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/chemistry_1/screen/chemistry_screen.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/chemistry_2/screen/chemistry_2screen.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/lap_chem105/screen/lap_chem105.dart';
import 'package:tageer/view/Screen/shcawe/dev_email.dart';
import 'package:tageer/view/Screen/shcawe/shcawe.dart';
import 'package:tageer/view/Screen/store/screen/store_screen.dart';
import 'package:tageer/view/Screen/taqweem/taqweem.dart';
import 'package:tageer/view/Screen/teachers_emails/chem/teacher_name_chem.dart';
import 'package:tageer/view/Screen/teachers_emails/math/teacher_name_math.dart';
import 'package:tageer/view/Screen/teachers_emails/physics/teacher_name_physucs.dart';
import 'package:tageer/view/Screen/teachers_emails/screen/teachers_emails.dart';

import 'view/Screen/teachers_emails/bio/teacher_name_bio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBTnHlarr77H5fEDJX-scsLLdFQG-U1Ytc",
      appId: "1:452821852399:android:5dddbfd311931888b9bb1a",
      messagingSenderId: "452821852399",
      projectId: "tageer-app",
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => Auth(),
          Start.RoutName: (context) => const Start(),
          LoginBody.RouteName: (context) => const LoginBody(),
          SinUpScreen.RoutName: (context) => const SinUpScreen(),
          HomeScreen.RoutName: (context) => HomeScreen(),
          Team.RoutName: (context) => Team(),
          StudentPlan.RoutName: (context) => const StudentPlan(),
          Studentplan2.RoutName: (context) => Studentplan2(),
          PhysicsPlan.RoutName: (context) => const PhysicsPlan(),
          MathPlan.RoutName: (context) => const MathPlan(),
          BiologyPlan.RoutName: (context) => BiologyPlan(),
          CollegeJointScreen.RoutName: (context) => const CollegeJointScreen(),
          PlanImage.RoutName: (context) => const PlanImage(),
          PlanPhysics.RoutName: (context) => const PlanPhysics(),
          PlanMathImage.RoutName: (context) => const PlanMathImage(),
          PlanBioImage.RoutName: (context) => const PlanBioImage(),
          PlanChamaImage.RoutName: (context) => const PlanChamaImage(),
          CategoryFiles.RoutName: (context) => const CategoryFiles(),
          Item.RoutName: (context) => const Item(),
          Chemistry1Screen.RoutName: (context) => Chemistry1Screen(),
          Chemistry2Screen.RoutName: (context) => const Chemistry2Screen(),
          LapChem105.RoutName: (context) => const LapChem105(),
          Bio1.RoutName: (context) => const Bio1(),
          cc.RoutName: (context) => const cc(),
          Physics1.RoutName: (context) => const Physics1(),
          Calc1.RoutName: (context) => const Calc1(),
          Calc2.RoutName: (context) => const Calc2(),
          Dave1.RoutName: (context) => const Dave1(),
          ChooseSpecialty.RoutName: (context) => const ChooseSpecialty(),
          Physics2.RoutName: (context) => const Physics2(),
          ItemSecond.RoutName: (context) => const ItemSecond(),
          LapOrganc.RoutName: (context) => const LapOrganc(),
          LapAnalytical.RoutName: (context) => const LapAnalytical(),
          Analytical.RoutName: (context) => const Analytical(),
          Organic1.RoutName: (context) => const Organic1(),
          Organic2.RoutName: (context) => const Organic2(),
          InOrganic1.RoutName: (context) => const InOrganic1(),
          Vizcal1.RoutName: (context) => const Vizcal1(),
          ItemTherd.RoutName: (context) => const ItemTherd(),
          LabSys.RoutName: (context) => const LabSys(),
          AutomatedAnalysis2.RoutName: (context) => const AutomatedAnalysis2(),
          AutomatedAnalysis1.RoutName: (context) => const AutomatedAnalysis1(),
          InOrganic2.RoutName: (context) => const InOrganic2(),
          LapAutomatedAnalysis.RoutName: (context) =>
              const LapAutomatedAnalysis(),
          Spectro.RoutName: (context) => const Spectro(),
          Vizcal2.RoutName: (context) => const Vizcal2(),
          Vizcal3.RoutName: (context) => const Vizcal3(),
          LapInOrganic.RoutName: (context) => const LapInOrganic(),
          LapVizcal.RoutName: (context) => const LapVizcal(),
          ItemFourth.RoutName: (context) => const ItemFourth(),
          InOrganic3.RoutName: (context) => const InOrganic3(),
          IndustrialAnalyses.RoutName: (context) => const IndustrialAnalyses(),
          EnviromentalAnalysis.RoutName: (context) =>
              const EnviromentalAnalysis(),
          Organometallic.RoutName: (context) => const Organometallic(),
          Polymer.RoutName: (context) => const Polymer(),
          Organic3.RoutName: (context) => const Organic3(),
          Alnawatij.RoutName: (context) => const Alnawatij(),
          SbishilEudwia.RoutName: (context) => const SbishilEudwia(),
          Hetero.RoutName: (context) => const Hetero(),
          SpecialAnalytical.RoutName: (context) => const SpecialAnalytical(),
          CategoryFilesPhysisc.RoutName: (context) =>
              const CategoryFilesPhysisc(),
          ItemSecondPhysisc.RoutName: (context) => const ItemSecondPhysisc(),
          LapPhsiscs3.RoutName: (context) => const LapPhsiscs3(),
          Electronics.RoutName: (context) => const Electronics(),
          Math1.RoutName: (context) => const Math1(),
          Math2.RoutName: (context) => const Math2(),
          Computation.RoutName: (context) => const Computation(),
          Modern1.RoutName: (context) => const Modern1(),
          Modern2.RoutName: (context) => const Modern2(),
          ItemTherdPhysisc.RoutName: (context) => const ItemTherdPhysisc(),
          LabAdvance1.RoutName: (context) => const LabAdvance1(),
          KAHRO1.RoutName: (context) => const KAHRO1(),
          KAHRO2.RoutName: (context) => const KAHRO2(),
          Thermo.RoutName: (context) => const Thermo(),
          Medical.RoutName: (context) => const Medical(),
          Quantum1.RoutName: (context) => const Quantum1(),
          Quantum2.RoutName: (context) => const Quantum2(),
          ItemFoarthPhysisc.RoutName: (context) => const ItemFoarthPhysisc(),
          Laser.RoutName: (context) => const Laser(),
          Solid.RoutName: (context) => const Solid(),
          LabAdvance2.RoutName: (context) => const LabAdvance2(),
          Radiation.RoutName: (context) => const Radiation(),
          Relativity.RoutName: (context) => const Relativity(),
          Nano.RoutName: (context) => const Nano(),
          Labapplications.RoutName: (context) => const Labapplications(),
          Materia.RoutName: (context) => const Materia(),
          Classical.RoutName: (context) => const Classical(),
          dhuriya.RoutName: (context) => const dhuriya(),
          Astronomy.RoutName: (context) => const Astronomy(),
          ItemSecondMath.RoutName: (context) => const ItemSecondMath(),
          ItemtheredMath.RoutName: (context) => const ItemtheredMath(),
          ItemForthMath.RoutName: (context) => const ItemForthMath(),
          CategoryFilesMath.RoutName: (context) => const CategoryFilesMath(),
          EuclideanGeometry.RoutName: (context) => const EuclideanGeometry(),
          Clac3.RoutName: (context) => Clac3(),
          HazmBarmajiatRiadia.RoutName: (context) =>
              const HazmBarmajiatRiadia(),
          LinearAlgebra1.RoutName: (context) => const LinearAlgebra1(),
          ProbabilityTheory.RoutName: (context) => const ProbabilityTheory(),
          RealAnalysis1.RoutName: (context) => const RealAnalysis1(),
          UsusRiadiaat.RoutName: (context) => const UsusRiadiaat(),
          LinearProgramming.RoutName: (context) => const LinearProgramming(),
          NumberTheory.RoutName: (context) => const NumberTheory(),
          PartialDifferentialEquations.RoutName: (context) =>
              const PartialDifferentialEquations(),
          RealAnalysis2.RoutName: (context) => const RealAnalysis2(),
          StatementTheory.RoutName: (context) => const StatementTheory(),
          StatisticalMethods.RoutName: (context) => const StatisticalMethods(),
          AbstractAlgebra1.RoutName: (context) => const AbstractAlgebra1(),
          Advance.RoutName: (context) => const Advance(),
          ComplexAnalysis.RoutName: (context) => const ComplexAnalysis(),
          Compositions.RoutName: (context) => const Compositions(),
          DaliAnalysis.RoutName: (context) => const DaliAnalysis(),
          DesignAndAnalysis.RoutName: (context) => const DesignAndAnalysis(),
          DynamicSystems.RoutName: (context) => const DynamicSystems(),
          HistoryofMathematics.RoutName: (context) =>
              const HistoryofMathematics(),
          IntegralEquations.RoutName: (context) => const IntegralEquations(),
          MathematicalStatistics.RoutName: (context) =>
              const MathematicalStatistics(),
          NonEuclideanGeometry.RoutName: (context) =>
              const NonEuclideanGeometry(),
          NumericalAnalysis.RoutName: (context) => const NumericalAnalysis(),
          PreviewMethods.RoutName: (context) => const PreviewMethods(),
          Topology1.RoutName: (context) => const Topology1(),
          Topology2.RoutName: (context) => const Topology1(),
          ItemSecondbio.RoutName: (context) => const ItemSecondbio(),
          Itemtherdbio.RoutName: (context) => const Itemtherdbio(),
          Itemforthbio.RoutName: (context) => const Itemforthbio(),
          CategoryFilesBio.RoutName: (context) => const CategoryFilesBio(),
          AnatomyOfAplantt.RoutName: (context) => AnatomyOfAplantt(),
          BasicsOfBotany.RoutName: (context) => BasicsOfBotany(),
          Biochemistry.RoutName: (context) => Biochemistry(),
          CellBiology.RoutName: (context) => CellBiology(),
          Invertebrates.RoutName: (context) => Invertebrates(),
          PracticalLifeSciences2.RoutName: (context) =>
              PracticalLifeSciences2(),
          Vertebrates.RoutName: (context) => Vertebrates(),
          GeneralMicrobiology.RoutName: (context) => GeneralMicrobiology(),
          AnimalPhysiology.RoutName: (context) => AnimalPhysiology(),
          AppliedStructuralBiology.RoutName: (context) =>
              AppliedStructuralBiology(),
          Biotechnology.RoutName: (context) => Biotechnology(),
          DnaTechniques.RoutName: (context) => DnaTechniques(),
          GeneExpression.RoutName: (context) => GeneExpression(),
          MaterialSeparationTechniques.RoutName: (context) =>
              MaterialSeparationTechniques(),
          MedicinalPlants.RoutName: (context) => MedicinalPlants(),
          MolecularBiology.RoutName: (context) => MolecularBiology(),
          PlantBiology.RoutName: (context) => PlantBiology(),
          PlantBiotechnology.RoutName: (context) => PlantBiotechnology(),
          PlantPhysiology.RoutName: (context) => PlantPhysiology(),
          VibrantEnvironment.RoutName: (context) => VibrantEnvironment(),
          ComputerApplications.RoutName: (context) => ComputerApplications(),
          EuclideanGeometry.RoutName: (context) => const EuclideanGeometry(),
          ExperimentalDesignAndAnalysis.RoutName: (context) =>
              ExperimentalDesignAndAnalysis(),
          Hematology.RoutName: (context) => Hematology(),
          ModelingOfBioLogicalSystems.RoutName: (context) =>
              ModelingOfBioLogicalSystems(),
          Reactors.RoutName: (context) => Reactors(),
          TeachersEmails.RoutName: (context) => const TeachersEmails(),
          TeachersNamesBio.RoutName: (context) => const TeachersNamesBio(),
          TeachersNamesChem.RoutName: (context) => const TeachersNamesChem(),
          TeachersNamesMath.RoutName: (context) => const TeachersNamesMath(),
          TeachersNamesPhysics.RoutName: (context) =>
              const TeachersNamesPhysics(),
          LoginPageA.Routname: (context) => LoginPageA(),
          GPACalculatorMultipleCoursesScreen.routeName: (context) =>
              GPACalculatorMultipleCoursesScreen(),
          Taqweem.RoutName: (context) => const Taqweem(),
          StoreScreen.RoutName: (context) => StoreScreen(),
          ScreenDev.RoutName: (context) => const ScreenDev(),
          DevEmail.RoutName: (context) => const DevEmail(),
          ForgetPas.RouteName:(context)=>const ForgetPas()
        },
      );
    });
  }
}
