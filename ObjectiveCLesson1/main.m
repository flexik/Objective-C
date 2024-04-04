//
//  main.m
//  ObjectiveCLesson1
//
//  Created by Артем Сиренко on 4/2/24.
//
// Задание
// 1) Решить квадратные уравнения:
// x^2 – 8x + 12 = 0,
// 12x^2 – 4x + 2 = 0,
// x^2 – 100x - 2 = 0
// (заменять константы в коде).
//
// 2) Создать программу, которая находит большее число среди 3-х чисел.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  1) Для каждого уравнения вычисляется дискриминант и в зависимости от его значения выводятся корни уравнения или сообщение о том, что у уравнения нет корней.
        //
        // Уравнение x^2 – 8x + 12 = 0
        double a = 1;
        double b = -8;
        double c = 12;
        
        double discriminant = b*b - 4*a*c;
        
        if (discriminant > 0) {
            double x1 = (-b + sqrt(discriminant)) / (2*a);
            double x2 = (-b - sqrt(discriminant)) / (2*a);
            NSLog(@"x1 = %f, x2 = %f", x1, x2);
        } else if (discriminant == 0) {
            double x = -b / (2*a);
            NSLog(@"x = %f", x);
        } else {
            NSLog(@"У уравнения нет корней");
        }
        
        // Уравнение 12x^2 – 4x + 2 = 0
        a = 12;
        b = -4;
        c = 2;
        
        discriminant = b*b - 4*a*c;
        
        if (discriminant > 0) {
            double x1 = (-b + sqrt(discriminant)) / (2*a);
            double x2 = (-b - sqrt(discriminant)) / (2*a);
            NSLog(@"x1 = %f, x2 = %f", x1, x2);
        } else if (discriminant == 0) {
            double x = -b / (2*a);
            NSLog(@"x = %f", x);
        } else {
            NSLog(@"У уравнения нет корней");
        }
        
        // Уравнение x^2 – 100x - 2 = 0
        a = 1;
        b = -100;
        c = -2;
        
        discriminant = b*b - 4*a*c;
        
        if (discriminant > 0) {
            double x1 = (-b + sqrt(discriminant)) / (2*a);
            double x2 = (-b - sqrt(discriminant)) / (2*a);
            NSLog(@"x1 = %f, x2 = %f", x1, x2);
        } else if (discriminant == 0) {
            double x = -b / (2*a);
            NSLog(@"x = %f", x);
        } else {
            NSLog(@"У уравнения нет корней");
        }
        
        
        // 2) Задаются три числа, затем сравниваются между собой и находится максимальное из них, которое затем выводится на экран.
        
        int num1 = 10;
        int num2 = 25;
        int num3 = 15;
        
        int max = num1;
        
        if (num2 > max) {
            max = num2;
        }
        
        if (num3 > max) {
            max = num3;
        }
        
        NSLog(@"Максимальное число: %d", max);
        
    }
    return 0;
}
