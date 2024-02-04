
//HARSH KUMAR
//Fetching data from database and displaying in a Swing UI
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public class ReportGenerator {

    private static final String URL = "jdbc:mysql://localhost:3306/dummy_database";
    private static final String USER = "";
    private static final String PASSWORD = "";

    private Connection connection;

    private JFrame frame;
    private JTable reportTable;
    private DefaultTableModel tableModel;

    // Constructor creaing connection to database
    public ReportGenerator() {
        frame = new JFrame("Report Generator");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 400);

        tableModel = new DefaultTableModel();
        reportTable = new JTable(tableModel);

        JScrollPane scrollPane = new JScrollPane(reportTable);
        frame.getContentPane().add(scrollPane, BorderLayout.CENTER);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public Map<String, Integer> getCallsStatistics(String month) {
        Map<String, Integer> callsStats = new HashMap<>();

        // Fetch and calculate statistics for Calls table
        String sql = "SELECT COUNT(*) AS totalCalls, AVG(call_duration) AS averageDuration " +
                "FROM Calls WHERE MONTH(call_date) = MONTH(?) AND YEAR(call_date) = YEAR(?)";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, month);
            statement.setString(2, month);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                callsStats.put("TotalCalls", resultSet.getInt("totalCalls"));
                callsStats.put("AverageDuration", resultSet.getInt("averageDuration"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return callsStats;
    }

    public void generateReport(String targetMonth) {
        Map<String, Integer> callsStats = getCallsStatistics(targetMonth);
        tableModel.setColumnIdentifiers(new String[] { "Statistic", "Value" });
        for (Map.Entry<String, Integer> entry : callsStats.entrySet()) {
            tableModel.addRow(new Object[] { entry.getKey(), entry.getValue() });
        }
    }

    public void displayUI() {
        SwingUtilities.invokeLater(() -> {
            frame.setVisible(true);
        });
    }

    public static void main(String[] args) {
        ReportGenerator reportGenerator = new ReportGenerator();
        String targetMonth = "2024-01";
        reportGenerator.generateReport(targetMonth);
        try {
            if (reportGenerator.connection != null && !reportGenerator.connection.isClosed()) {
                reportGenerator.connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        reportGenerator.displayUI();
    }
}
