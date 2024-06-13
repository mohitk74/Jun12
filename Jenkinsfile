pipeline {
   agent any
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2023b\\bin;${PATH}"   // Windows agent 
   }
    stages {
         stage('First_Step') {
            steps {
               runMATLABCommand(command: 'disp("The building has started!")')
            }       
        }
        stage('Simulation') {
            steps {
                runMATLABCommand(command: 'simulation_check')
            }       
        }
       stage('Jmaab_check') {
            steps {
                runMATLABCommand(command: 'jmaab_check')
            }       
        }
       stage('Code_Generation') {
            steps {
                runMATLABCommand(command: 'code_generation')
            }       
        }
       stage('Test') {
            steps {
               runMATLABCommand(command: 'variables_for_jenkins')
                runMATLABCommand(command: 'automating_with_variables')
            }       
        }
        // stage('Testcases') {
        //     steps {
        //         runMATLABTests(testResultsJUnit: 'test-results/results.xml',
        //                        codeCoverageCobertura: 'code-coverage/coverage.xml', 
        //                          testResultsPDF: 'test-results/testreport.pdf')
        //        // runMATLABCommand(command: 'test_and_gate_model')
        //     }
        // }
       stage('Final_Step') {
            steps {
               runMATLABCommand(command: 'disp("The building is finished!")')
            } 
      }
   }
}
