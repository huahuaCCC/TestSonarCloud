rm -rf ./build
rm -rf sonarqube-generic-coverage.xml

#build test
xcodebuild test \
             -project "TestSonarCloud.xcodeproj" \
             -scheme "TestSonarCloud" \
             -configuration "Debug" \
             -derivedDataPath "./build" \
             -destination 'platform=iOS Simulator,name=iPhone 11 Pro Max' \
             -enableCodeCoverage YES \
             | xcpretty

#covert to sonar report
bash xccov-to-sonarqube-generic.sh build/Logs/Test/*.xcresult/ > sonarqube-generic-coverage.xml

#scan
sonar-scanner -Dsonar.organization=huahuaccc \
			  -Dsonar.projectKey=huahuaCCC_TestSonarCloud   
			  -Dsonar.sources=.   
			  -Dsonar.host.url=https://sonarcloud.io   
			  -Dsonar.login=1cf4bcd8226c5906d5ac4e81709b22bb8e760be1

