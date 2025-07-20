//
//  ContentView.swift
//  tripKit
//
//  Created by 이중엽 on 7/13/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Consts.Colors.bg.color.ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        HStack {
                            Text("Your Balance")
                                .font(.footnote)
                                .foregroundStyle(Color.white)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            let date = getDate()
                            Text(date)
                                .font(.footnote)
                                .foregroundStyle(Color.white)
                                .fontWeight(.medium)
                        }
                        
                        Text("$1,000,000")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                        
                        Spacer()
                        
                        Text("Premium Card")
                            .font(.footnote)
                            .foregroundStyle(Color.white)
                            .fontWeight(.medium)
                    }
                    .frame(height: 120)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .background(RadialGradient(colors: [.green, .cyan], center: .topLeading, startRadius: 0, endRadius: 600)
                    )
                    .cornerRadius(20)
                    
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
                    
                    ScrollView {
                        Section(header: SectionHeaderView(title: "Category", subTitle: "budget")) {
                            
                            let width: CGFloat = (UIScreen.main.bounds.width - 40) / 3.5
                            let height: CGFloat = width
                            
                            ScrollView(.horizontal) {
                                LazyHStack {
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                }
                            }
                            .scrollIndicators(.hidden)
                        }
                        
                        Section(header: SectionHeaderView(title: "Consumer", subTitle: "money")) {
                            let width: CGFloat = UIScreen.main.bounds.width - 40
                            let height: CGFloat = width / 2
                            
                            ScrollView(.vertical) {
                                LazyVStack {
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                    CategoryRow(width: width, height: height)
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .toolbar {
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
        } // 네비뷰
    }
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
