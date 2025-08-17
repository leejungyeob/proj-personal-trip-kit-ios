//
//  ContentView.swift
//  tripKit
//
//  Created by 이중엽 on 7/13/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    let sampleCategories: [CategoryItem] = [
        CategoryItem(name: "음식", colorHex: "#FF9F1C"),
        CategoryItem(name: "여행", colorHex: "#2EC4B6"),
        CategoryItem(name: "운동", colorHex: "#E71D36")
    ]
    
    var body: some View {
        
        let horizontalPadding: CGFloat = 20
        
        NavigationStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                // MARK: 카드
                CardVIew()
                
                
                // MARK: 버튼
                HStack(spacing: 10) {
                    Button {
                        print("123")
                    } label: {
                        HStack {
                            Image(systemName: "arrow.up.bin")
                            
                            Text("Top Up")
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundStyle(.white)
                        .background(.gray.opacity(0.3))
                        .cornerRadius(20)
                    }
                    
                    Button {
                        print("123")
                    } label: {
                        HStack {
                            Image(systemName: "arrow.up.bin")
                            
                            Text("Send")
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundStyle(.white)
                        .background(.gray.opacity(0.3))
                        .cornerRadius(20)
                    }
                }
                .padding(.vertical, 10)
                .padding(.horizontal, horizontalPadding)
                
                // MARK: Category
                categoryView()
                
                
                // MARK: Comsumer
                Section(header: SectionHeaderView(title: "Consumer", subTitle: "money")) {
                    ScrollView(.vertical) {
                        LazyVStack {
                            ForEach(0..<5) { _ in
                                CategoryRow()
                                    .frame(width: .infinity, height: 100)
                            }
                        }
                    }
                }
                .padding(.horizontal, horizontalPadding)
            }
            .padding(.top, 20)
            .toolbar {
                toolBarContent()
            }
            .background(Consts.Colors.bg.color)
        } // 네비뷰
    }
}

import Foundation

struct CategoryItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let colorHex: String
}

extension ContentView {
    
    func getDate() -> String {
        let DateFormatter = DateFormatter()
        DateFormatter.dateFormat = "MM/yy"
        return DateFormatter.string(from: Date())
    }
}

#Preview {
    ContentView()
}

extension ContentView {
    
    @ViewBuilder
    func categoryView() -> some View {
        let horizontalPadding: CGFloat = 20
        
        Section(header: SectionHeaderView(title: "Category", subTitle: "budget")) {
            let spacing: CGFloat = 10
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyHGrid(
                    rows: [GridItem(.flexible(minimum: 100, maximum: 150))],
                    spacing: spacing
                ) {
                    ForEach(sampleCategories, id: \.self) { data in
                        NavigationLink(destination: qwe()) {
                            CategoryRow()
                                .aspectRatio(1, contentMode: .fill) // 정사각형 유지
                        }
                        .tint(.black)
                    }
                }
            }
        }
        .padding(.horizontal, horizontalPadding)
    }
    
    @ToolbarContentBuilder
    func toolBarContent() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                
                VStack(alignment: .leading) {
                    Text("hello!")
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.5))
                    
                    Text("LEE JUNGYEOB")
                        .font(.footnote)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}
