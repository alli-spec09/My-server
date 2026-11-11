FROM eclipse-temurin:17-jre
COPY LemSciLab_V9_4_2_Return_Verification.jar /app/verification.jar
COPY LemSciLab_V9_4_3_Return_Approvals.jar /app/approvals.jar
CMD ["sh", "-c", "java -jar /app/approvals.jar --lan --port=${PORT:-10000}"]
