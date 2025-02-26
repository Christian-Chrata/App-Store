//
//  ContentView.swift
//  App Store
//
//  Created by Christian on 10/02/25.
//

import SwiftUI

#Preview {
    ContentView()
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    VStack(alignment: .leading, spacing: 24) {
                        HeaderCard(date: getTodayDate())
                        LargeCard(item: getLargeItem())
                        AdsCard(item: getAdsItem())
                        ListCard(items: getListItems())
                        optionCard()
                    }
                } footer: {
                    Button(action: {}) {
                        Text("Terms & Conditions >")
                            .foregroundStyle(.secondary)
                    }
                    .buttonStyle(.plain)
                }
            }
            .listStyle(PlainListStyle())
            
        }
    }
}

struct HeaderCard: View {
    var date: String
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text("Today")
                .font(.title)
                .fontWeight(.bold)
            Text(date)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.secondary)
            
            Spacer()
            
            ZStack {
                Circle()
                    .strokeBorder(Color.gray, lineWidth: 0)
                    .fill(Color.gray)
                    .frame(width: 35, height: 35)
                    .onTapGesture {
                        print("")
                    }
                
                Text("CW")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
        }
    }
}

struct LargeCard: View {
    let item: AppModel
    
    var body: some View {
        ZStack {
            Image(item.appBackground)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            VStack {
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("NOW TRENDING")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.secondary)
                    Text("Watch the Super Bowl Lix Halftime Show")
                        .lineSpacing(0)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Relive Bruno Mars performance in spartial audio.")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundStyle(.secondary)
                }
                
                HStack {
                    Image(item.appIcon)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                    VStack(alignment: .leading) {
                        Text(item.appName)
                            .font(.headline)
                        
                        Text(item.appDesc)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Open")
                            .font(.caption)
                            .fontWeight(.bold)
                    }
                    .buttonStyle(.bordered)
                }
            }
            .padding()
            .background(
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color(.systemBackground).opacity(0),
                            Color(.systemBackground).opacity(0.75)
                        ]
                    ),
                    startPoint: .center,
                    endPoint: .bottom
                )
            )
        }
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
    }
}

struct AdsCard: View {
    let item: AppModel
    
    var body: some View {
        ZStack {
            Image(item.appBackground)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            VStack {
                Image(item.appIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width: 75, height: 75)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.appName)
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        HStack {
                            HStack {
                                Text("  Ad  ")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                            }
                            .background(Color(.blue))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            Text(item.appDesc)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("GET")
                            .font(.caption)
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }
                    .buttonStyle(.bordered)
                    .clipShape(.capsule)
                }
            }
            .padding()
        }
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
    }
}

struct ListCard: View {
    var items: [AppModel]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .leading) {
                Text("The List")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                Text("Now Trending")
                    .font(.title)
                    .fontWeight(.bold)
            }
            ForEach(items) { item in
                HStack {
                    Image(item.appIcon)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                    VStack(alignment: .leading) {
                        Text(item.appName)
                            .lineSpacing(0)
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        Text(item.appDesc)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(1)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("GET")
                            .font(.caption)
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }
                    .buttonStyle(.bordered)
                    .clipShape(.capsule)
                }
            }
            .listStyle(PlainListStyle())
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
    }
}

struct optionCard: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Redeem")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            
            Button(action: {}) {
                Text("Send Gift")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            
            Button(action: {}) {
                Text("Add Funds to Apple Account")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
        }
    }
}
