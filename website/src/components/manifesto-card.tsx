import Link from 'next/link'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'

export default function ManifestoCard() {
  return (
    <div className="px-4 sm:px-6 lg:px-8 my-8">
      <Link
        href="https://manifesto.masterfabric.co"
        target="_blank"
        rel="noopener noreferrer"
        className="block"
      >
        <Card className="transition-shadow hover:shadow-lg max-w-xl mx-auto">
          <CardHeader className="p-4 sm:p-6 text-center">
            <CardTitle className="text-xl sm:text-2xl">Developer Manifesto</CardTitle>
            <CardDescription className="text-base sm:text-sm">
              Explore our core values and ways of working. A concise, clear summary.
            </CardDescription>
          </CardHeader>
          <CardContent className="p-4 pt-0 sm:p-6 sm:pt-0 text-center">
            <div className="text-sm text-muted-foreground">
              manifesto.masterfabric.co →
            </div>
          </CardContent>
        </Card>
      </Link>
    </div>
  )
}


