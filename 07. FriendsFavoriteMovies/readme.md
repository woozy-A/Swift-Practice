## 첫번째꺼
 - 배운 내용


왜안되는거지
모르겠네

- import ​Foundation
→ Foundation은 날짜, 문자열, 컬렉션 등 다양한 기본 기능을 제공하는 Apple의 표준 라이브러리
그래서 import ​Foundation을 하면, 예를 들어 Date, String, UUID 같은 타입과 여러 유용한 함수들을 바로 사용 가능

- import ​Swift​Data
→ SwiftData는 데이터(예: 데이터베이스, 영구 저장소)를 다루는 기능 제공
이걸 import하면 SwiftData에서 제공하는 데이터 모델, 쿼리, 저장소 기능 등을 활용 가능

>> import는 "이 파일에서 OO 기능을 쓸 거야!"라고 선언하는 것


- init(name: ​String)

• init은 **initializer(이니셜라이저, 초기화 메서드)**입니다.
• 이 함수는 새로운 Friend 객체를 만들 때(= 인스턴스 생성) 호출됩니다.
• 예를 들어, let f = ​Friend(name: "홍길동") 처럼 사용할 수 있습니다.
• 이렇게 하면 이 객체의 name 속성이 "홍길동"으로 설정됩니다.

훔 넘어렵...
왜 프리뷰에서는 데이터가 뜨는데
실제로 실행하면 안뜨는지에대해 찾아봤는데 
프리뷰에서는 메모리가 유지되는데 실제 데이터가 없어서 앱 실행시에는 아무것도 안뜨는게 맞다고 하는데 맞나...?
그리고 
Model​Configuration(schema: schema, is​Stored​In​Memory​Only: true) 여기 설정에서
is​Stored​In​Memory​Only: true 이부분을 false로 바꿔도 안뜨긴함 데이터를 넣어야할거같은데 어케 넣는지 모르겠는데

아아아아아ㅏ망마임ㅇ나

이게 자기가 짠 코드가 아니고
무엇을 만들지 안정하고 따라하다보니 이미지가 그려지지 않고 
어떤걸 넣어야할지 잘모르게되서
내가 필요한 기능을 찾아가면서 공부하는게 맞을것같다는 생각도 들었습니다.

그치만 일단 자꾸 써보고 자꾸 보다보면 이해가는 부분도 생길것 같아 열심히 해보겠습니다.

## 두번째꺼


FriendList 의
            .sheet(item: $newFriend) { friend in
                    NavigationStack {
                        FriendDetail(friend: friend)
                    }
                    }
                    하고
                    
MovieList 의
            .sheet(item: $newMovie) { movie in
                NavigationStack {
                    MovieDetail(movie: movie)
                }
            }
            
            하고 동일한 코드인데 왜 다르게 동작하는지 이해가 안됨
            오타를 냈을 수도 있으나 다른 사람과 비교 필요!
