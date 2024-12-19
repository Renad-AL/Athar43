//
//  CookingView.swift
//  Athar43
//
//  Created by Shahinaz Alsubaie on 18/06/1446 AH.
//

import SwiftUI

struct CookingView: View {
    var body: some View {
        ZStack {
            // الخلفية بلون بيج فاتح
            Color(red: 1.0, green: 0.97, blue: 0.91)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // العنوان
                Text("ساعد والدتك في إعداد كعكة العيد")
                    .font(.system(size: 40, weight: .bold)) // زيادة حجم الخط
                    .foregroundColor(.brown)
                    .shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 2)
                    .padding(.top, 60) // ضبط المسافة العلوية
                
                // صورة الرف والعناصر فوقه
                ZStack {
                    Image("shelf")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600, height: 160) // تكبير حجم الرف
                    
                    HStack(spacing: 50) { // زيادة المسافة بين العناصر
                        Image("egg1")
                            .resizable()
                            .frame(width: 100, height: 100) // تكبير حجم البيضة
                        
                        Image("date1")
                            .resizable()
                            .frame(width: 100, height: 100) // تكبير حجم التمر
                        
                        Image("flour")
                            .resizable()
                            .frame(width: 120, height: 150) // تكبير حجم الدقيق
                        
                        Image("milk")
                            .resizable()
                            .frame(width: 100, height: 150) // تكبير حجم الحليب
                    }
                    .offset(y: -70) // ضبط المسافة الرأسية
                }
                .padding(.top, 40) // ضبط المسافة العلوية
                
                Spacer()
            }
            
            // الصحن الكبير في المنتصف
            Image("bowl")
                .resizable()
                .scaledToFit()
                .frame(width: 1200, height: 1200) // تعديل حجم الصحن
                .offset(y: 200) // تحريك الصحن للأسفل أكثر
        }
    }
}

#Preview {
    CookingView()
}
