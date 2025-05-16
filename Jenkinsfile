pipeline {
    agent any

    environment {
        gitLabel = VersionNumber([
            projectStartDate: '2023-01-01',
            versionNumberString: "${params.gitLabel}",
            worstResultForIncrement: 'SUCCESS'
        ])
    }

    stages {
        stage('Unit Test') {
            steps {
                script {
                    currentBuild.displayName = "${params.gitLabel}"
                }
                echo 'Skipped...'
            }
        }
        stage('Docker Build') {
            steps {
                sh "docker build --build-arg debug_mode=--no-dev -t rocinantesystems/nodejs-cronjob:latest ."
            }
        }
        stage('E2E Test (local)') {
            steps {
                echo 'Skipped...'
            }
        }
        stage('Docker:latest') {
            steps {
                sh "docker push rocinantesystems/nodejs-cronjob:latest"
            }
        }
        stage('Push to stage') {
            steps {
                echo 'Skipped...'
                // sh './redeploy-rancher-stage.sh'
            }
        }
        stage('E2E Test (stage)') {
            steps {
                echo 'Skipped...'
            }
        }
        stage('Docker:tag') {
            steps {
                sh "docker tag rocinantesystems/nodejs-cronjob:latest rocinantesystems/nodejs-cronjob:${params.gitLabel}"
                sh "docker push rocinantesystems/nodejs-cronjob:${params.gitLabel}"
                sh "docker rmi rocinantesystems/nodejs-cronjob:${params.gitLabel}"
                sh "docker rmi rocinantesystems/nodejs-cronjob:latest"
            }
        }
        stage('Push to production') {
            steps {
                echo 'Skipped...'
            }
        }
        stage('E2E Test (production)') {
            steps {
                echo 'Skipped...'
            }
        }
    }
}
