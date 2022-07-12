//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 권준상 on 2022/07/12.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top) // 화면의 상단 가장자리까지 확대 (safeArea 무시)
                .frame(height: 300) // width 생략시 뷰 width에 맞춰짐
            CircleImage(image: landmark.image)
                .offset(y: -130) // y축 기준 -130 offset
                .padding(.bottom, -130) // 뷰 하단을 기준으로 -130만큼 패딩 지정
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                HStack(alignment: .center) {
                    Text(landmark.park)
                        .fontWeight(.medium)
                    Spacer()
                    Text(landmark.state)
                        .fontWeight(.medium)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
