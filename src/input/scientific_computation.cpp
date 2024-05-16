#include <iostream>
using namespace std;

const int MAX = 4; // Adjust this to the size of your matrix

void LU_decomposition(double A[MAX][MAX], double L[MAX][MAX], double U[MAX][MAX], int n) {
    // Initialize L and U matrices with zeros
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            L[i][j] = 0;
            U[i][j] = 0;
        }
    }

    for (int k = 0; k < n; ++k) {
        // Calculate U[k][k]
        double sum = 0;
        for (int s = 0; s < k; ++s) {
            sum += L[k][s] * U[s][k];
        }
        L[k][k] = A[k][k] != 0 ? A[k][k] : 1;
        U[k][k] = (A[k][k] - sum) / L[k][k];

        // Calculate U[k][j] for j = k+1 to n
        for (int j = k + 1; j < n; ++j) {
            sum = 0;
            for (int s = 0; s < k; ++s) {
                sum += L[k][s] * U[s][j];
            }
            U[k][j] = (A[k][j] - sum) / L[k][k];
        }

        // Calculate L[i][k] for i = k+1 to n
        for (int i = k + 1; i < n; ++i) {
            sum = 0;
            for (int s = 0; s < k; ++s) {
                sum += L[i][s] * U[s][k];
            }
            L[i][k] = (A[i][k] - sum) / U[k][k];
        }
    }
}

int main() {
    double matrix[MAX][MAX] = {
        {6, -2, 2, 4},
        {12, -8, 6, 10},
        {3, -13, 9, 3},
        {-6, 4, 1, -18}
    };

    double L[MAX][MAX], U[MAX][MAX];
    int n = MAX;

    LU_decomposition(matrix, L, U, n);

    cout << "A = " << endl;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }

    cout << "\nL = " << endl;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            cout << L[i][j] << " ";
        }
        cout << endl;
    }

    cout << "\nU = " << endl;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            cout << U[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
