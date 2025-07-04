# .은 모든 변경 사항을 의미
# add는 staging area로 변경 사항을 이동함을 의미미
git add .

# commit은 변경 사항을 확정 짓고, 변경 이력(commitID) 발생.
# commit시에 staging area는 비워지고, local repository에 변경 이력 발생
git commit -m "메시지"

# origin은 원격을 의미
git push origin 브랜치명

# github 인증 방법 가지
# 1. 직접 토큰 발급(특정 작업이나 repository에 대한 권한 제한 가능)
# 2. 웹을 통한 인증(vscode, intellij 등을 통해)

# git 프로젝트 생성 방법 2가지
# 1. 원격에서부터 repo 생성 후 clone (.git 폴더 생성)
# 2. 로컬에서부터 프로젝트 생성 후 github 업로드 (.git 폴더 X)
# 2-1. .git 폴더 생성
git init
# 2-2. .git 폴더에 원격지 주소 추가
git remote add origin 레포주소

# 다른 repo에서 클론을 받아 나의 github에 올리기
# 1. commit 이력 그대로 가져가기
git clone 타인repo주소
git remote set-url origin 본인repo주소
git push origin main

# 2. commit 이력 없이 가져가기
git clone 타인repo주소
# .git 폴더 삭제 후후
git init # 다시 .git 폴더 생성(비어있는), git에서 master branch 생성 이후 main 생성 후 바꿔주어야 함
git remote add origin 본인repo주소
git checkout -b main # main을 만들어서 main으로 switching
git add, commit, push # commit 이력 없기 때문

# 사용자 지정
# 전역적 사용자 지정 (이름, 이메일)
git config --global user.name "유저명"
git config --global user.email "유저이메일명"
# git 설정 정보 조회
git config --list

# .gitignore 파일은 git 추적 목록에서 제외
# 경로를 정확히 적기; root 경로에서부터 시작
# ex) testfolder/important_config.yml
# 만약 이미 git에서 추적되고 있는 파일은 제외 안됨 -> 캐시 삭제 필요
git rm -r --cached .