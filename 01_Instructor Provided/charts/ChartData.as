// ActionScript file
package
{
  import mx.collections.ArrayCollection;

  public class ChartData
  {
    public function getDataSet1():ArrayCollection{
      var productSales:ArrayCollection = new ArrayCollection( [
            { Quarter: "1", Gizmos: 10000, Widgets: 3000, Gadgets: 1000,
Total: 14000 },
            { Quarter: "2", Gizmos: 12000, Widgets: 4000, Gadgets: 2000,
Total: 18000 },
            { Quarter: "3", Gizmos: 15000, Widgets: 8000, Gadgets: 5000,
Total: 28000 },
            { Quarter: "4", Gizmos: 20000, Widgets: 10000, Gadgets: 9000,
Total: 39000 }
            ]);
            return productSales;
    }

    public function getStockData1():ArrayCollection{
      var goog:ArrayCollection = new ArrayCollection( [
      { date: "3-Jul-06", open: 420.04, high: 423.77, low: 419.45, close: 423.20,
volume: "2,156,700" },
      { date: "5-Jul-06", open: 421.52, high: 422.80, low: 415.64, close: 421.46,
volume: "4,985,600" },
      { date: "6-Jul-06", open: 423.38, high: 425.38, low: 421.98, close: 423.19,
volume: "3,687,100" },
      { date: "7-Jul-06", open: 426.05, high: 427.89, low: 415.88, close: 420.45,
volume: "6,041,900" },
      { date: "10-Jul-06", open: 423.44, high: 425.23, low: 416.38, close: 418.20,
volume: "4,436,400" },
      { date: "11-Jul-06", open: 418.51, high: 425.05, low: 413.03, close: 424.56,
volume: "5,971,300" },
      { date: "12-Jul-06", open: 422.09, high: 422.74, low: 416.73, close: 417.25,
volume: "4,906,700" },
      { date: "13-Jul-06", open: 414.00, high: 418.34, low: 406.83, close: 408.83,
volume: "6,924,500" },
      { date: "14-Jul-06", open: 410.33, high: 411.49, low: 398.61, close: 403.50,
volume: "7,552,100" },
      { date: "17-Jul-06", open: 404.63, high: 411.00, low: 403.72, close: 407.89,
volume: "5,811,900" },
      { date: "18-Jul-06", open: 409.75, high: 410.57, low: 397.74, close: 403.05,
volume: "8,536,800" },
      { date: "19-Jul-06", open: 395.01, high: 401.14, low: 394.66, close: 399.00,
volume: "8,518,500" },
      { date: "20-Jul-06", open: 404.28, high: 404.44, low: 385.66, close: 387.12,
volume: "12,538,700" },
      { date: "21-Jul-06", open: 386.14, high: 391.75, low: 377.69, close: 390.11,
volume: "11,754,600" },
      { date: "21-Jul-06", open: 386.14, high: 391.75, low: 377.69, close: 390.11,
volume: "11,754,600" },
      { date: "24-Jul-06", open: 392.82, high: 393.89, low: 381.21, close: 390.90,
volume: "8,086,100" },
      { date: "25-Jul-06", open: 385.02, high: 391.31, low: 383.80, close: 389.36,
volume: "5,761,100" },
      { date: "26-Jul-06", open: 388.20, high: 391.91, low: 383.00, close: 385.50,
volume: "5,531,900" },
      { date: "27-Jul-06", open: 387.37, high: 387.49, low: 377.95, close: 382.40,
volume: "5,641,100" },
      { date: "28-Jul-06", open: 382.00, high: 389.56, low: 381.73, close: 388.12,
volume: "4,083,600" },
      { date: "31-Jul-06", open: 388.00, high: 389.17, low: 383.31, close: 386.60,
volume: "4,595,300" }
      ]);
      return goog;
    }
  }
}
