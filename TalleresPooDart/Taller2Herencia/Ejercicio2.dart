/*Escriba un programa en Java que permita la gestión de una empresa agroalimentaria que 
trabaja con tres tipos de productos: productos frescos, productos refrigerados y productos 
congelados. Todos los productos llevan esta información común: fecha de caducidad y 
número de lote. A su vez, cada tipo de producto lleva alguna información específica. Los 
productos frescos deben llevar la fecha de envasado y el país de origen. Los productos 
refrigerados deben llevar el código del organismo de supervisión alimentaria, la fecha de 
envasado, la temperatura de mantenimiento recomendada y el país de origen. Los 
productos congelados deben llevar la fecha de envasado, el país de origen y la temperatura 
de mantenimiento recomendada. 
Hay tres tipos de productos congelados: congelados por aire, congelados por agua y 
congelados por nitrógeno. Los productos congelados por aire deben llevar la información 
de la composición del aire con que fue congelado (% de nitrógeno, % de oxígeno, % de 
dióxido de carbono y % de vapor de agua). Los productos congelados por agua deben llevar 
la información de la salinidad del agua con que se realizó la congelación en gramos de sal 
por litro de agua. Los productos congelados por nitrógeno deben llevar la información del 
método de congelación empleado y del tiempo de exposición al nitrógeno expresada en 
segundos.*/
class Producto {
  DateTime fechaVencimiento;
  String numeroLote;

  Producto(this.fechaVencimiento, this.numeroLote);
}

class ProductoFresco extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;

  ProductoFresco(DateTime fechaVencimiento, String numeroLote, this.fechaEnvasado, this.paisOrigen): super(fechaVencimiento, numeroLote);
}

class ProductoRefrigerado extends Producto {
  String codigoSupervision;
  DateTime fechaEnvasado;
  double tempMantenimiento;
  String paisOrigen;

  ProductoRefrigerado(DateTime fechaVencimiento, String numeroLote, this.codigoSupervision, this.fechaEnvasado,this.tempMantenimiento, this.paisOrigen): super(fechaVencimiento, numeroLote);
}

class ProductoCongelado extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;
  double tempMantenimiento;

  ProductoCongelado(DateTime fechaVencimiento, String numeroLote, this.fechaEnvasado, this.paisOrigen,this.tempMantenimiento): super(fechaVencimiento, numeroLote);
}

class ProductoCongeladoAire extends ProductoCongelado {
  double porcentajeNitrigeno;
  double porcentajeOxigeno;
  double porcentajeDioxidoCarbono;
  double porcentajeVaporAgua;

  ProductoCongeladoAire(DateTime fechaVencimiento, String numeroLote, DateTime fechaEnvasado, String paisOrigen,double temperaturaMantenimiento, this.porcentajeNitrigeno, this.porcentajeOxigeno, this.porcentajeDioxidoCarbono,this.porcentajeVaporAgua): super(fechaVencimiento, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}


class ProductoCongeladoAgua extends ProductoCongelado {
  double salinidadAgua;

  ProductoCongeladoAgua(DateTime fechaVencimiento, String numeroLote, DateTime fechaEnvasado, String paisOrigen,double temperaturaMantenimiento, this.salinidadAgua): super(fechaVencimiento, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}


class ProductoCongeladoNitrogeno extends ProductoCongelado {
  String metodoCongelacion;
  int tiempoExposicionNitrogeno;

  ProductoCongeladoNitrogeno(DateTime fechaVencimiento, String numeroLote, DateTime fechaEnvasado, String paisOrigen,double temperaturaMantenimiento, this.metodoCongelacion, this.tiempoExposicionNitrogeno): super(fechaVencimiento, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}

void main() {
  final productoFresco = ProductoFresco(DateTime(2024, 6, 31), "123", DateTime(2024, 5, 8), "Colombia");
  final productoRefrigerado = ProductoRefrigerado(DateTime(2025, 7, 24), "456", "123456", DateTime(2024, 5, 8), 4.0, "Argentina");
  final productoCongeladoAire = ProductoCongeladoAire(DateTime(2026, 5, 8), "789", DateTime(2024, 5, 8), "Ecuador", -18.0, 80.0, 20.0, 0.0, 0.0);
  final productoCongeladoAgua = ProductoCongeladoAgua(DateTime(2025, 4, 6), "101", DateTime(2024, 5, 8), "Brazil", -18.0, 10.0);
  final productoCongeladoNitrogeno = ProductoCongeladoNitrogeno(DateTime(2026, 10, 30), "112", DateTime(2024, 5, 1), "China", -18.0, "Inmersión", 10);

  print(productoFresco.fechaEnvasado.toString().split(" ")[0]);
  print(productoRefrigerado.tempMantenimiento);
  print(productoCongeladoAire.porcentajeNitrigeno);
  print(productoCongeladoAgua.salinidadAgua);
  print(productoCongeladoNitrogeno.metodoCongelacion);
}