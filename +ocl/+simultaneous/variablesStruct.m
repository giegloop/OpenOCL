function stage_vars_structure = variablesStruct(N, states, integrator_vars, controls, parameters)
stage_vars_structure = ocl.types.Structure();
stage_vars_structure.addRepeated({'states','integrator','controls','parameters','h'}, ...
  {states, ...
   integrator_vars, ...
   controls, ...
   parameters, ...
  ocl.types.Matrix([1,1])}, N);
stage_vars_structure.add('states', states);
stage_vars_structure.add('parameters', parameters);
